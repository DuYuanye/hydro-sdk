import * as crypto from "crypto";

import {BuildOptions} from "./buildOptions";

export function configHash(config: BuildOptions): string 
{
    const hash = crypto.createHash("sha256");

    hash.update(config.entry);
    hash.update(config.modName);
    hash.update(config.outDir);
    hash.update(config.profile);

    return hash.digest("hex");
}