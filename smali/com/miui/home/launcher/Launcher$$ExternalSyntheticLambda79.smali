.class public final synthetic Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda79;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/miui/home/launcher/AppInfo;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/home/launcher/AppInfo;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda79;->f$0:Lcom/miui/home/launcher/AppInfo;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    iget-object p0, p0, Lcom/miui/home/launcher/Launcher$$ExternalSyntheticLambda79;->f$0:Lcom/miui/home/launcher/AppInfo;

    check-cast p1, Lcom/miui/home/launcher/AppInfo;

    invoke-static {p0, p1}, Lcom/miui/home/launcher/Launcher;->$r8$lambda$tpTXNL1vs8H1YljsUDkc6n_ut8s(Lcom/miui/home/launcher/AppInfo;Lcom/miui/home/launcher/AppInfo;)Landroid/util/Pair;

    move-result-object p0

    return-object p0
.end method
