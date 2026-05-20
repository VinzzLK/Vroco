.class public abstract Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;
.super Ljava/lang/Object;
.source "CloudSettingsController.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;,
        Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsControllerInstance;
    }
.end annotation


# instance fields
.field protected mCloudSettingsChangedBroadcastReceiver:Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;


# direct methods
.method protected constructor <init>()V
    .locals 8

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    new-instance v0, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;-><init>(Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$1;)V

    iput-object v0, p0, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->mCloudSettingsChangedBroadcastReceiver:Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;

    .line 26
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v2

    iget-object v3, p0, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->mCloudSettingsChangedBroadcastReceiver:Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsChangedBroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    .line 27
    invoke-virtual {p0}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;->getCloudSettingsChangedAction()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v4, p0}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v5, "miui.permission.USE_INTERNAL_GENERAL_API"

    const/4 v6, 0x0

    const/4 v7, 0x2

    .line 26
    invoke-virtual/range {v2 .. v7}, Landroid/app/Application;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;I)Landroid/content/Intent;

    return-void
.end method

.method public static getInstance()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;
    .locals 1

    .line 33
    invoke-static {}, Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController$CloudSettingsControllerInstance;->access$100()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsController;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getCloudSettingsChangedAction()Ljava/lang/String;
.end method

.method public abstract getCloudSettingsInfo()Lcom/miui/home/launcher/commercial/cloudSettings/CloudSettingsInfo;
.end method

.method public abstract isGuessYouLikeAdsOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z
.end method

.method public abstract isRecommendSwitchOnAsDefault(Lcom/miui/home/launcher/FolderInfo;)Z
.end method

.method public abstract requestCloudSettingsInfo()V
.end method
