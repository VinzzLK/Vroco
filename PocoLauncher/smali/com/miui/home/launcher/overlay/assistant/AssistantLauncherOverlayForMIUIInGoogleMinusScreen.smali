.class public Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlayForMIUIInGoogleMinusScreen;
.super Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;
.source "AssistantLauncherOverlayForMIUIInGoogleMinusScreen.java"


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 11
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/overlay/assistant/AssistantLauncherOverlay;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public setLauncherOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V
    .locals 0

    .line 16
    iget-object p0, p0, Lcom/miui/home/launcher/overlay/LauncherOverlayMIUI;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/Launcher;->setAssistantOverlayInstallOverlay(Lcom/miui/home/launcher/overlay/LauncherOverlay;)V

    return-void
.end method
