.class public Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;
.super Lcom/miui/home/launcher/ScreenView;
.source "UninstallDialog.java"

# interfaces
.implements Lcom/miui/home/launcher/IconContainer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/UninstallDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DeleteIconContainer"
.end annotation


# instance fields
.field private mLauncher:Lcom/miui/home/launcher/Launcher;

.field public mSpanX:I

.field public mSpanY:I

.field public mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    .line 515
    invoke-direct {p0, p1, p2, v0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 519
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/home/launcher/ScreenView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x1

    .line 511
    iput p1, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mSpanX:I

    .line 512
    iput p1, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mSpanY:I

    .line 520
    invoke-static {p0}, Lcom/miui/home/launcher/Launcher;->getLauncher(Landroid/view/View;)Lcom/miui/home/launcher/Launcher;

    move-result-object p1

    iput-object p1, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    return-void
.end method


# virtual methods
.method public getDisplayHeight()I
    .locals 1

    .line 548
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellHeight()I

    move-result v0

    .line 549
    iget p0, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mSpanY:I

    mul-int/2addr v0, p0

    return v0
.end method

.method public getDisplayWidth()I
    .locals 3

    .line 540
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getCellWidth()I

    move-result v0

    .line 541
    iget v1, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mSpanY:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    mul-int/lit8 v0, v0, 0x2

    return v0

    .line 544
    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mSpanX:I

    mul-int/2addr v0, p0

    return v0
.end method

.method protected onMeasure(II)V
    .locals 1

    .line 534
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getDisplayWidth()I

    move-result p1

    const/high16 p2, 0x40000000    # 2.0f

    invoke-static {p1, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 535
    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->getDisplayHeight()I

    move-result v0

    invoke-static {v0, p2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 536
    invoke-super {p0, p1, p2}, Lcom/miui/home/launcher/ScreenView;->onMeasure(II)V

    return-void
.end method

.method public removeIcon(Landroid/view/View;)V
    .locals 2

    .line 525
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/ScreenView;->removeView(Landroid/view/View;)V

    .line 526
    invoke-virtual {p0}, Lcom/miui/home/launcher/ScreenView;->getScreenCount()I

    move-result p1

    if-lez p1, :cond_0

    .line 527
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mUninstallDialog:Lcom/miui/home/launcher/UninstallDialog;

    invoke-virtual {p0}, Lcom/miui/home/launcher/UninstallDialog;->setTitle()V

    goto :goto_0

    .line 529
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mLauncher:Lcom/miui/home/launcher/Launcher;

    invoke-virtual {p0}, Lcom/miui/home/launcher/Launcher;->getDropTargetBar()Lcom/miui/home/launcher/DropTargetBar;

    move-result-object p0

    invoke-virtual {p0}, Lcom/miui/home/launcher/DropTargetBar;->getUninstallDialogWrapper()Lcom/miui/home/launcher/UninstallDialogWrapper;

    move-result-object p0

    const/4 p1, 0x0

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Lcom/miui/home/launcher/UninstallDialogWrapper;->showUninstallDialog(ZZLjava/util/List;)Z

    :goto_0
    return-void
.end method

.method public updateSpanXY(II)V
    .locals 1

    .line 553
    iget v0, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mSpanX:I

    if-ne p1, v0, :cond_0

    iget v0, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mSpanY:I

    if-eq p2, v0, :cond_1

    .line 554
    :cond_0
    iput p1, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mSpanX:I

    .line 555
    iput p2, p0, Lcom/miui/home/launcher/UninstallDialog$DeleteIconContainer;->mSpanY:I

    :cond_1
    return-void
.end method
