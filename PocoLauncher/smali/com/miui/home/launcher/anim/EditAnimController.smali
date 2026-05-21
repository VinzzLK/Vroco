.class public abstract Lcom/miui/home/launcher/anim/EditAnimController;
.super Ljava/lang/Object;
.source "EditAnimController.java"


# instance fields
.field protected mCellLayout:Lcom/miui/home/launcher/CellLayout;

.field protected mLauncher:Lcom/miui/home/launcher/Launcher;


# direct methods
.method public constructor <init>(Lcom/miui/home/launcher/Launcher;Lcom/miui/home/launcher/CellLayout;)V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mLauncher:Lcom/miui/home/launcher/Launcher;

    .line 20
    iput-object p2, p0, Lcom/miui/home/launcher/anim/EditAnimController;->mCellLayout:Lcom/miui/home/launcher/CellLayout;

    return-void
.end method


# virtual methods
.method public abstract cancelEditEnterAnim()V
.end method

.method public abstract onScreenSizeChanged()V
.end method

.method public abstract startEditAnim(ZZLcom/miui/home/launcher/EditStateChangeReason;)V
.end method

.method public abstract triggerAnimationStart()V
.end method

.method public updateEditBackground(F)V
    .locals 0

    return-void
.end method

.method public abstract updateParam()V
.end method
