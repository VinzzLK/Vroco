.class public Lcom/miui/home/launcher/common/CheckableDelegate;
.super Ljava/lang/Object;
.source "CheckableDelegate.java"


# instance fields
.field private mIsChecked:Z

.field private mSavedCheckStatus:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 8
    iput v0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mSavedCheckStatus:I

    return-void
.end method


# virtual methods
.method public clearSavedCheckedStatus()V
    .locals 1

    const/4 v0, -0x1

    .line 40
    iput v0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mSavedCheckStatus:I

    return-void
.end method

.method public invertChecked()V
    .locals 1

    .line 24
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mIsChecked:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mIsChecked:Z

    return-void
.end method

.method public isChecked()Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mIsChecked:Z

    return p0
.end method

.method public restoreCheckedStatus()V
    .locals 2

    .line 34
    iget v0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mSavedCheckStatus:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mIsChecked:Z

    const/4 v0, -0x1

    .line 35
    iput v0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mSavedCheckStatus:I

    return-void
.end method

.method public saveCheckedStatus()V
    .locals 1

    .line 29
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mIsChecked:Z

    iput v0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mSavedCheckStatus:I

    return-void
.end method

.method public setIsChecked(Z)V
    .locals 1

    .line 17
    iget-boolean v0, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mIsChecked:Z

    if-eq v0, p1, :cond_0

    .line 18
    iput-boolean p1, p0, Lcom/miui/home/launcher/common/CheckableDelegate;->mIsChecked:Z

    :cond_0
    return-void
.end method
