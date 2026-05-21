.class Lcom/miui/launcher/overlay/client/PackageReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PackageReceiver.java"


# instance fields
.field private final mClient:Lcom/miui/launcher/overlay/client/LauncherClient;


# direct methods
.method public constructor <init>(Lcom/miui/launcher/overlay/client/LauncherClient;)V
    .locals 0

    .line 10
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 11
    iput-object p1, p0, Lcom/miui/launcher/overlay/client/PackageReceiver;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/launcher/overlay/client/PackageReceiver;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-virtual {p0, p1}, Lcom/miui/launcher/overlay/client/LauncherClient;->onOverlayUpdate(Landroid/content/Context;)V

    return-void
.end method
