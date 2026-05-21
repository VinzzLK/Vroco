.class public Lmiuix/appcompat/app/LayoutUiModeHelper;
.super Ljava/lang/Object;
.source "LayoutUiModeHelper.java"


# direct methods
.method public static autoSetLayoutUiMode(Landroid/app/Activity;)V
    .locals 2

    .line 27
    instance-of v0, p0, Lmiuix/appcompat/app/AppCompatActivity;

    if-eqz v0, :cond_0

    .line 28
    move-object v0, p0

    check-cast v0, Lmiuix/appcompat/app/AppCompatActivity;

    .line 29
    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isFloatingWindowTheme()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Lmiuix/appcompat/app/AppCompatActivity;->isInFloatingWindowMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 31
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p0

    const/high16 v0, 0x8000000

    .line 32
    invoke-virtual {p0, v0}, Landroid/view/Window;->addFlags(I)V

    return-void

    :cond_0
    if-eqz p0, :cond_1

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 39
    invoke-static {p0, v0}, Lmiuix/appcompat/app/LayoutUiModeHelper;->autoSetLayoutUiMode(Landroid/app/Activity;Landroid/view/Window;)V

    :cond_1
    return-void
.end method

.method public static autoSetLayoutUiMode(Landroid/app/Activity;Landroid/view/Window;)V
    .locals 3

    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Configuration;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mWindowingMode=freeform"

    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    const-string v2, "miui-magic-windows"

    .line 48
    invoke-virtual {v0, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    .line 50
    invoke-static {p0}, Lmiuix/core/util/EnvStateManager;->isFullScreenGestureMode(Landroid/content/Context;)Z

    move-result p0

    const/high16 v2, 0x8000000

    if-nez p0, :cond_1

    if-nez v0, :cond_0

    if-nez v1, :cond_1

    .line 51
    :cond_0
    invoke-virtual {p1, v2}, Landroid/view/Window;->clearFlags(I)V

    goto :goto_0

    .line 55
    :cond_1
    invoke-virtual {p1, v2}, Landroid/view/Window;->addFlags(I)V

    :goto_0
    const/high16 p0, 0x4000000

    .line 59
    invoke-virtual {p1, p0}, Landroid/view/Window;->addFlags(I)V

    return-void
.end method
