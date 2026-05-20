.class public abstract Lcom/miui/home/launcher/allapps/hideapps/CommonLinearLayout;
.super Landroid/widget/LinearLayout;
.source "CommonLinearLayout.java"

# interfaces
.implements Lcom/miui/home/launcher/allapps/hideapps/MyUnlockView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 13
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public abstract synthetic setAppPage(Z)V
.end method

.method public abstract synthetic setApplockUnlockCallback(Lcom/miui/home/launcher/allapps/hideapps/HideAppslockUnlockCallback;)V
.end method

.method public abstract synthetic setDisplayMode(Lcom/miui/home/launcher/allapps/hideapps/LockPatternView$DisplayMode;)V
.end method

.method public abstract synthetic setLightMode(Z)V
.end method
