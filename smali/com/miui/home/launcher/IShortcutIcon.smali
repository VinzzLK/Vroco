.class public interface abstract Lcom/miui/home/launcher/IShortcutIcon;
.super Ljava/lang/Object;
.source "IShortcutIcon.java"

# interfaces
.implements Lcom/miui/home/launcher/DesktopIcon;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/home/launcher/IShortcutIcon$ShortcutIconContainer;
    }
.end annotation


# virtual methods
.method public abstract checkCheckBox(Z)V
.end method

.method public abstract drawOutLine(Landroid/graphics/Canvas;)V
.end method

.method public abstract getGhostView()Lcom/miui/home/launcher/AutoLayoutAnimation$GhostView;
.end method

.method public abstract getShortcutInfo()Lcom/miui/home/launcher/ShortcutInfo;
.end method

.method public abstract isCanChecked()Z
.end method

.method public abstract isPairIcon()Z
.end method

.method public abstract needPostWhenDrop()Z
.end method

.method public abstract resetCheckBox()V
.end method

.method public abstract resetIShortcutIcon(Landroid/view/View;)V
.end method

.method public abstract resetInRunningFolderSimpleCloseAnimStatus()V
.end method

.method public abstract restoreToInitState()V
.end method

.method public abstract setEditMode(ZZ)V
.end method

.method public abstract setInRunningFolderSimpleCloseAnimStatus(Z)V
.end method

.method public abstract setIsAnimating(Z)V
.end method

.method public abstract setIsMultiDrag(Z)V
.end method

.method public abstract setMessageImmediately(Ljava/lang/String;)V
.end method

.method public setTag(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 1

    .line 58
    instance-of v0, p0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 59
    check-cast p0, Landroid/view/View;

    invoke-virtual {p0, p1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public abstract setTitle(Ljava/lang/CharSequence;)V
.end method

.method public abstract showAllChildViewWhenDrawChild()V
.end method

.method public abstract showTitle()V
.end method

.method public abstract updateCheckBoxAnimProgress(F)V
.end method

.method public abstract updateTitleTip()V
.end method
