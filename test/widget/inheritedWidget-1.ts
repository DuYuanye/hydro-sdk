import { Type } from "../../runtime/dart/core/type";
import { pauseInDebugger } from "../../runtime/dart/developer/debugger";
import { BuildContext } from "../../runtime/flutter/buildContext";
import { Key } from "../../runtime/flutter/foundation/key";
import { runApp } from "../../runtime/flutter/runApp";
import { Widget } from "../../runtime/flutter/widget";
import { InheritedWidget } from "../../runtime/flutter/widgets/inheritedWidget";
import { SizedBox } from "../../runtime/flutter/widgets/sizedBox";
import { StatelessWidget } from "../../runtime/flutter/widgets/statelessWidget";

class Inherited extends InheritedWidget {
    public readonly runtimeType = new Type(Inherited);
    public child: Widget;
    public message: string;
    public constructor(props: { message: string; child: Widget }) {
        super();
        this.child = props.child;
        this.message = props.message;
    }

    public static of(context: BuildContext) {
        return context.ancestorInheritedElementForWidgetOfExactType<Inherited>(
            new Type(Inherited)
        );
    }
}

class InnerApp extends StatelessWidget {
    public build(context: BuildContext) {
        const inherited = Inherited.of(context);
        return new SizedBox({
            key: new Key(inherited ? inherited.message : ""),
        });
    }
}

class App extends StatelessWidget {
    public build() {
        return new Inherited({
            message: "inherited message",
            child: new InnerApp(),
        });
    }
}

runApp(() => new App());
