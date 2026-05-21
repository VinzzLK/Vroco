.class Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$PinAppChangeReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "PinAppChangeReceiver"
.end annotation


# instance fields
.field public final synthetic this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;


# direct methods
.method private constructor <init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$PinAppChangeReceiver;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$PinAppChangeReceiver;-><init>(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    :cond_0
    const-string v0, "miui.intent.action.PIN_APP_CHANGED"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const/4 p1, 0x0

    const-string v0, "extra_pin_app_change_action"

    invoke-virtual {p2, v0, p1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p1

    const-string v0, "extra_pin_app_change_device_id"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "extra_pin_app_change_app_package_name"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    const-string v1, "MiuiSynergy"

    if-eqz p1, :cond_6

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const/4 v3, 0x3

    if-nez v2, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    if-eq p1, v3, :cond_2

    goto :goto_1

    :cond_2
    iget-object v2, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$PinAppChangeReceiver;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-static {v2}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$1000(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Lcom/xiaomi/mirror/synergy/PinAppChangeCallBack;

    move-result-object v2

    if-nez v2, :cond_3

    const-string p0, "PIN_APP_CHANGED callback is null"

    :goto_0
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_3
    const/4 v1, 0x1

    if-ne p1, v1, :cond_4

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$PinAppChangeReceiver;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-static {p0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$1000(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Lcom/xiaomi/mirror/synergy/PinAppChangeCallBack;

    move-result-object p0

    invoke-interface {p0, p2, v0}, Lcom/xiaomi/mirror/synergy/PinAppChangeCallBack;->addPinApp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_4
    const/4 v1, 0x2

    if-ne p1, v1, :cond_5

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$PinAppChangeReceiver;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-static {p0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$1000(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Lcom/xiaomi/mirror/synergy/PinAppChangeCallBack;

    move-result-object p0

    invoke-interface {p0, p2, v0}, Lcom/xiaomi/mirror/synergy/PinAppChangeCallBack;->removePinApp(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-ne p1, v3, :cond_7

    iget-object p0, p0, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk$PinAppChangeReceiver;->this$0:Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;

    invoke-static {p0}, Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;->access$1000(Lcom/xiaomi/mirror/synergy/MiuiSynergySdk;)Lcom/xiaomi/mirror/synergy/PinAppChangeCallBack;

    move-result-object p0

    invoke-interface {p0}, Lcom/xiaomi/mirror/synergy/PinAppChangeCallBack;->pinAppManagerInit()V

    goto :goto_2

    :cond_6
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "PIN_APP_CHANGED Extra error changeAction\uff1a "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " deviceId is empty: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, " packageName is empty: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_0

    :cond_7
    :goto_2
    return-void
.end method
