.class public Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;
.super Ljava/lang/Object;
.source "LauncherAssistantCompatMIUIInGoogleMinusScreen.java"


# instance fields
.field private mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

.field private mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

.field private final mLauncher:Lcom/miui/home/launcher/Launcher;

.field private mMaMlAuthManager:Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method

.method private createClientOptions(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;
    .locals 4

    .line 105
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    const-string v1, "com.mi.globalminusscreen"

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->getServerVersion()I

    move-result v0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {v0, v1}, Lcom/miui/launcher/overlay/client/LauncherClient;->loadServerVersion(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    :goto_0
    const/4 v2, 0x5

    const/4 v3, 0x1

    if-lt v0, v2, :cond_1

    .line 107
    invoke-static {}, Lcom/miui/home/launcher/MIUIWidgetUtil;->isMIUIWidgetSupport()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    invoke-virtual {p1}, Lcom/miui/home/launcher/allapps/LauncherMode;->supportAssistant()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 111
    iget-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p1}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string v0, "open_personal_assistant"

    invoke-static {p1, v0, v3}, Landroid/provider/MiuiSettings$System;->getBoolean(Landroid/content/ContentResolver;Ljava/lang/String;Z)Z

    move-result v3

    goto :goto_1

    :cond_2
    const/4 v3, 0x0

    .line 115
    :goto_1
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-static {p0}, Lcom/miui/home/launcher/widget/MIUIWidgetCompat;->getOverlayPriorityStrategy(Landroid/content/Context;)I

    move-result p0

    .line 116
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v0, "strategy "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "LauncherAssistantCompat"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 117
    new-instance p1, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    invoke-direct {p1, v1, v3, p0}, Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;-><init>(Ljava/lang/String;ZI)V

    return-object p1
.end method


# virtual methods
.method public createLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 3

    .line 83
    new-instance v0, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlayForMIUIInGoogleMinusScreen;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {v0, v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlayForMIUIInGoogleMinusScreen;-><init>(Lcom/miui/home/launcher/Launcher;)V

    .line 84
    new-instance v1, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 85
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->createClientOptions(Lcom/miui/home/launcher/allapps/LauncherMode;)Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;

    move-result-object p1

    invoke-direct {v1, v2, p1, v0}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherClient;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient$ClientOptions;Lcom/miui/launcher/overlay/client/LauncherClientCallback;)V

    .line 86
    invoke-virtual {v0, v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->setClient(Lcom/miui/launcher/overlay/client/LauncherClient;)V

    .line 87
    new-instance p1, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    iget-object v2, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-direct {p1, v2, v1}, Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient;)V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mDragCallback:Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;

    .line 88
    invoke-virtual {v0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;->setDragCallback(Lcom/miui/home/launcher/overlay/assistant/AssistantDragCallback;)V

    .line 89
    iput-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    .line 90
    new-instance p1, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;

    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mLauncher:Lcom/miui/home/launcher/Launcher;

    iget-object v1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-direct {p1, v0, v1}, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;-><init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/launcher/overlay/client/LauncherClient;)V

    iput-object p1, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mMaMlAuthManager:Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;

    return-void
.end method

.method public destroyLauncherClient()V
    .locals 1

    .line 94
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 95
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onDetachedFromWindow()V

    .line 96
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onDestroy()V

    .line 97
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->disconnect()V

    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0

    .line 77
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 78
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/miui/launcher/overlay/client/LauncherClient;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 0

    .line 65
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 66
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onAttachedToWindow()V

    :cond_0
    return-void
.end method

.method public onCreate(Lcom/miui/home/launcher/allapps/LauncherMode;)V
    .locals 0

    .line 40
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->createLauncherClient(Lcom/miui/home/launcher/allapps/LauncherMode;)V

    return-void
.end method

.method public onDestroy()V
    .locals 0

    .line 59
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 60
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onDestroy()V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 0

    .line 71
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 72
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onDetachedFromWindow()V

    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz p0, :cond_0

    .line 45
    invoke-virtual {p0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onStart()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 1

    .line 50
    iget-object v0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mClient:Lcom/miui/launcher/overlay/client/LauncherClient;

    if-eqz v0, :cond_0

    .line 51
    invoke-virtual {v0}, Lcom/miui/launcher/overlay/client/LauncherClient;->onStop()V

    .line 53
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/LauncherAssistantCompatMIUIInGoogleMinusScreen;->mMaMlAuthManager:Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;

    if-eqz p0, :cond_1

    .line 54
    invoke-virtual {p0}, Lcom/miui/home/launcher/maml/auth/MaMlAuthManager;->onStop()V

    :cond_1
    return-void
.end method
