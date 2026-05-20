.class public final synthetic Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Lcom/xiaomi/mirror/synergy/GetAllPinAppListCallBack;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/GetAllPinAppListCallBack;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$$ExternalSyntheticLambda0;->f$1:Lcom/xiaomi/mirror/synergy/GetAllPinAppListCallBack;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$$ExternalSyntheticLambda0;->f$1:Lcom/xiaomi/mirror/synergy/GetAllPinAppListCallBack;

    invoke-static {v0, p0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->$r8$lambda$_Ix0FD0xQCMEbTO0J6-AQPjcBPI(Landroid/content/Context;Lcom/xiaomi/mirror/synergy/GetAllPinAppListCallBack;)V

    return-void
.end method
