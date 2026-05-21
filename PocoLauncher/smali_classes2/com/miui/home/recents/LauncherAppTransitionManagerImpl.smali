.class public final Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;
.super Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;
.source "LauncherAppTransitionManagerImpl.java"


# instance fields
.field private isNeedResetLauncherState:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 57
    invoke-direct {p0, p1}, Lcom/miui/home/recents/QuickstepAppTransitionManagerImpl;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onEnterRecentsFromApp()V
    .locals 1

    const/4 v0, 0x0

    .line 88
    iput-boolean v0, p0, Lcom/miui/home/recents/LauncherAppTransitionManagerImpl;->isNeedResetLauncherState:Z

    return-void
.end method
