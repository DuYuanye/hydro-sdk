import {InputLanguage} from "./../../compiler/src/buildOptions";
import {buildBundleInfo} from "./../../compiler/src/bundle/buildBundleInfo";
import {bundle} from "./../../compiler/src/bundle/bundle";


test("", async () => {
    const bundleInfo = await buildBundleInfo({
        inputLanguage: InputLanguage.typescript,
        entry: "test/compiler/res/bundle-1.ts",
        modName: "bundle-1",
        outDir: "tmp",
        profile: "debug"
    });

    expect(bundleInfo.entries.length).toBe(4);
    expect(bundleInfo.entries[0].moduleName).toBe("test.compiler.res.dir.fooClass");
    expect(bundleInfo.entries[1].moduleName).toBe("test.compiler.res.dir.bar");
    expect(bundleInfo.entries[2].moduleName).toBe("test.compiler.res.bundle-1");
    expect(bundleInfo.entries[3].moduleName).toBe("lualib_bundle");

    const bundleResult = bundle(bundleInfo);

    expect(bundleResult.debugSymbols.length).toBe(2);
    expect(bundleResult.debugSymbols[0].lineStart).toBe(14);
    expect(bundleResult.debugSymbols[0].lineEnd).toBe(16);
    expect(bundleResult.debugSymbols[0].symbolName).toBe("FooClass.prototype.____constructor");

    expect(bundleResult.debugSymbols[1].lineStart).toBe(26);
    expect(bundleResult.debugSymbols[1].lineEnd).toBe(28);
    expect(bundleResult.debugSymbols[1].symbolName).toBe("____exports.bar");
})