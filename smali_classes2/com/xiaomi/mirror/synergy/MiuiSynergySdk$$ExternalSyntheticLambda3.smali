.class public final synthetic Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$$ExternalSyntheticLambda3;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Ljava/util/ArrayList;

.field public final synthetic f$1:Landroid/content/Context;

.field public final synthetic f$2:Lcom/xiaomi/mirror/synergy/GetAllPinAppListCallBack;


# direct methods
.method public synthetic constructor <init>(Ljava/util/ArrayList;Landroid/content/Context;Lcom/xiaomi/mirror/synergy/GetAllPinAppListCallBack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$$ExternalSyntheticLambda3;->f$0:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$$ExternalSyntheticLambda3;->f$2:Lcom/xiaomi/mirror/synergy/GetAllPinAppListCallBack;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$$ExternalSyntheticLambda3;->f$0:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$$ExternalSyntheticLambda3;->f$1:Landroid/content/Context;

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$$ExternalSyntheticLambda3;->f$2:Lcom/xiaomi/mirror/synergy/GetAllPinAppListCallBack;

    invoke-static {v0, v1, p0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->$r8$lambda$fJvn04odoB6fCbPPfeQyvyDOsvM(Ljava/util/ArrayList;Landroid/content/Context;Lcom/xiaomi/mirror/synergy/GetAllPinAppListCallBack;)V

    return-void
.end method
