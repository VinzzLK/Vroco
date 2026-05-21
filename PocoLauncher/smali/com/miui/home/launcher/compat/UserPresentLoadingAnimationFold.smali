.class public Lcom/miui/home/launcher/compat/UserPresentLoadingAnimationFold;
.super Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;
.source "UserPresentLoadingAnimationFold.java"


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;)V
    .locals 0

    .line 9
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/compat/UserPresentLoadingAnimation;-><init>(Lcom/miui/home/launcher/Launcher;)V

    return-void
.end method


# virtual methods
.method public prepareAnimation()V
    .locals 0

    .line 14
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->prepareCurrentScreen()V

    .line 15
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->prepareNextScreen()V

    return-void
.end method

.method public showAnimation()V
    .locals 0

    .line 20
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->showCurrentScreen()V

    .line 21
    invoke-virtual {p0}, Lcom/miui/home/launcher/compat/UserPresentAnimationCompatComplex;->showNextScreen()V

    return-void
.end method
