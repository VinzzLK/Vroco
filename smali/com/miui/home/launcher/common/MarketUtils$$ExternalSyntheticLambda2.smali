.class public final synthetic Lcom/miui/home/launcher/common/MarketUtils$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Ljava/util/HashSet;


# direct methods
.method public synthetic constructor <init>(Ljava/util/HashSet;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/common/MarketUtils$$ExternalSyntheticLambda2;->f$0:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/common/MarketUtils$$ExternalSyntheticLambda2;->f$0:Ljava/util/HashSet;

    check-cast p1, Ljava/lang/Void;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/common/MarketUtils;->$r8$lambda$HD7xkFnH6Ag15izWhkA_L4Auba0(Ljava/util/HashSet;Ljava/lang/Void;)Lcom/miui/home/launcher/ShortcutIcon;

    move-result-object p0

    return-object p0
.end method
