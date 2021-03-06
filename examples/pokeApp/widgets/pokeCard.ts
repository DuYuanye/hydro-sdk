import { FontWeight } from "../../../runtime/dart/ui/fontWeight";
import { BuildContext } from "../../../runtime/flutter/buildContext";
import { Key } from "../../../runtime/flutter/foundation/key";
import { Card } from "../../../runtime/flutter/material/card";
import { InkWell } from "../../../runtime/flutter/material/inkWell";
import { MaterialPageRoute } from "../../../runtime/flutter/material/materialPageRoute";
import { EdgeInsets } from "../../../runtime/flutter/painting/edgeInsets";
import { TextStyle } from "../../../runtime/flutter/painting/textStyle";
import { MainAxisSize } from "../../../runtime/flutter/rendering/mainAxisSize";
import { Column } from "../../../runtime/flutter/widgets/column";
import { Container } from "../../../runtime/flutter/widgets/container";
import { Hero } from "../../../runtime/flutter/widgets/hero";
import { Image } from "../../../runtime/flutter/widgets/image";
import { MainAxisAlignment } from "../../../runtime/flutter/widgets/mainAxisAlignment";
import { Navigator } from "../../../runtime/flutter/widgets/navigator";
import { Padding } from "../../../runtime/flutter/widgets/padding";
import { StatelessWidget } from "../../../runtime/flutter/widgets/statelessWidget";
import { Text } from "../../../runtime/flutter/widgets/text";
import { Pokemon } from "../data/pokeHub";
import { DetailScreen } from "../screens/detailScreen";

export class PokeCard extends StatelessWidget {
    public poke: Pokemon;
    public constructor(poke: Pokemon) {
        super();

        this.poke = poke;
    }

    public build(context: BuildContext) {
        return new Padding({
            padding: EdgeInsets.all(2.0),
            key: new Key(this.poke.name),
            child: new InkWell({
                onTap: () => {
                    Navigator.push(
                        context,
                        new MaterialPageRoute({
                            builder: () => new DetailScreen(this.poke),
                        })
                    );
                },
                child: new Hero({
                    tag: this.poke.img,
                    child: new Card({
                        child: new Column({
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                                new Container({
                                    child: Image.network(this.poke.img, {
                                        width: 120,
                                        height: 120,
                                    }),
                                }),
                                new Text(this.poke.name, {
                                    style: new TextStyle({
                                        fontSize: 20.0,
                                        fontWeight: FontWeight.bold,
                                    }),
                                }),
                            ],
                        }),
                    }),
                }),
            }),
        });
    }
}
