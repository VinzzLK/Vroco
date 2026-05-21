.class Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;
.super Landroid/content/BroadcastReceiver;
.source "CloudSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudSettingsChangedBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;


# direct methods
.method private constructor <init>(Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;)V
    .locals 0

    .line 41
    iput-object p1, p0, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;->this$0:Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$1;)V
    .locals 0

    .line 41
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;-><init>(Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 44
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onReceive: "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "CloudSettingsController"

    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const-string p1, "cloud settings update"

    .line 45
    invoke-static {p2, p1}, Lcom/miui/home/launcher/MiuiHomeLog;->log(Ljava/lang/String;Ljava/lang/String;)V

    .line 46
    iget-object p0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;->this$0:Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->requestCloudSettingsInfo()V

    return-void
.end method
