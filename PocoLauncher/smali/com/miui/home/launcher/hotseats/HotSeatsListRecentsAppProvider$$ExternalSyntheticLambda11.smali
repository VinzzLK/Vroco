.class public final synthetic Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Predicate;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/ShortcutInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda11;->f$0:Lcom/miui/home/launcher/ShortcutInfo;

    return-void
.end method


# virtual methods
.method public final test(Ljava/lang/Object;)Z
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider$$ExternalSyntheticLambda11;->f$0:Lcom/miui/home/launcher/ShortcutInfo;

    check-cast p1, Ljava/util/List;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/hotseats/HotSeatsListRecentsAppProvider;->$r8$lambda$utqdHtrwJ45auQsPkbGXuulxfA0(Lcom/miui/home/launcher/ShortcutInfo;Ljava/util/List;)Z

    move-result p0

    return p0
.end method
