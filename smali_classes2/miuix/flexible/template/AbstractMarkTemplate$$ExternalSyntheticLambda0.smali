.class public final synthetic Lmiuix/flexible/template/AbstractMarkTemplate$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field public final synthetic f$0:Lmiuix/flexible/template/AbstractMarkTemplate;


# direct methods
.method public synthetic constructor <init>(Lmiuix/flexible/template/AbstractMarkTemplate;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lmiuix/flexible/template/AbstractMarkTemplate$$ExternalSyntheticLambda0;->f$0:Lmiuix/flexible/template/AbstractMarkTemplate;

    return-void
.end method


# virtual methods
.method public final compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    iget-object p0, p0, Lmiuix/flexible/template/AbstractMarkTemplate$$ExternalSyntheticLambda0;->f$0:Lmiuix/flexible/template/AbstractMarkTemplate;

    check-cast p1, Lmiuix/flexible/mark/ViewNode;

    check-cast p2, Lmiuix/flexible/mark/ViewNode;

    invoke-static {p0, p1, p2}, Lmiuix/flexible/template/AbstractMarkTemplate;->$r8$lambda$ByJOZigvm-uckN1yR8To2VgYkv4(Lmiuix/flexible/template/AbstractMarkTemplate;Lmiuix/flexible/mark/ViewNode;Lmiuix/flexible/mark/ViewNode;)I

    move-result p0

    return p0
.end method
