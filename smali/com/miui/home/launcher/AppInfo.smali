.class public Lcom/miui/home/launcher/AppInfo;
.super Lcom/miui/home/launcher/BaseAppInfo;
.source "AppInfo.java"


# instance fields
.field private isHideApp:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 13
    invoke-direct {p0}, Lcom/miui/home/launcher/BaseAppInfo;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput-boolean v0, p0, Lcom/miui/home/launcher/AppInfo;->isHideApp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V
    .locals 0

    .line 20
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/BaseAppInfo;-><init>(Landroid/content/Context;Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/miui/home/launcher/AppInfo;->isHideApp:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V
    .locals 0

    .line 24
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/BaseAppInfo;-><init>(Landroid/content/pm/LauncherActivityInfo;Landroid/os/UserHandle;Z)V

    const/4 p1, 0x0

    .line 10
    iput-boolean p1, p0, Lcom/miui/home/launcher/AppInfo;->isHideApp:Z

    return-void
.end method


# virtual methods
.method public isHideApp()Z
    .locals 0

    .line 29
    iget-boolean p0, p0, Lcom/miui/home/launcher/AppInfo;->isHideApp:Z

    return p0
.end method

.method public setIsHideApp(Z)V
    .locals 0

    .line 33
    iput-boolean p1, p0, Lcom/miui/home/launcher/AppInfo;->isHideApp:Z

    return-void
.end method
