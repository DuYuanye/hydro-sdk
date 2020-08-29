import { RuntimeBaseClass } from "../../runtimeBaseClass";
import { Type } from "../../dart/core/type";
import { StatelessWidget } from "../widgets/statelessWidget";
import { Key } from "../foundation/key";
import { Widget } from "../widget";
import { VoidCallback } from "../../dart/ui/voidCallback";
import { IconData } from "../widgets/iconData";

interface CupertinoContextMenuActionProps {
    key?: Key | undefined;
    child: Widget;
    isDefaultAction?: boolean | undefined;
    isDestructiveAction?: boolean | undefined;
    onPressed?: VoidCallback | undefined;
    trailingIcon?: IconData | undefined;
}

declare const flutter: {
    cupertino: {
        cupertinoContextMenuAction: (this: void, props: CupertinoContextMenuActionProps) => CupertinoContextMenuAction;
    }
}

export class CupertinoContextMenuAction extends StatelessWidget implements RuntimeBaseClass {
    public readonly internalRuntimeType = new Type(CupertinoContextMenuAction);
    public props: CupertinoContextMenuActionProps;
    public constructor(props: CupertinoContextMenuActionProps) {
        super();
        this.props = props;

        if (this.props.isDefaultAction === undefined) {
            this.props.isDefaultAction = false;
        }

        if (this.props.isDestructiveAction === undefined) {
            this.props.isDestructiveAction = false;
        }
    }

    public build() {
        return flutter.cupertino.cupertinoContextMenuAction(this.props);
    }
}