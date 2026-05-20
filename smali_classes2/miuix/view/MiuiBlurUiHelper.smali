.class public Lmiuix/view/MiuiBlurUiHelper;
.super Ljava/lang/Object;
.source "MiuiBlurUiHelper.java"

# interfaces
.implements Lmiuix/view/BlurableWidget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;
    }
.end annotation


# instance fields
.field private mApplyBlur:Z

.field private mBlurBlendColorModes:[I

.field private mBlurBlendColors:[I

.field private mBlurEffect:I

.field private final mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

.field private final mContext:Landroid/content/Context;

.field private mEnableBlurSelfAsBackground:Z

.field private mIsEnableBlur:Z

.field private final mIsSpecialShape:Z

.field private mIsSupportBlur:Z

.field private mNeedApplyBlur:Z

.field private mNeedEnableBlur:Z

.field private final mViewApplyBlur:Landroid/view/View;

.field private mViewBlurMode:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/View;ZLmiuix/view/MiuiBlurUiHelper$BlurStateCallback;)V
    .locals 2

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 22
    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    .line 23
    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedEnableBlur:Z

    .line 24
    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsEnableBlur:Z

    .line 25
    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedApplyBlur:Z

    .line 26
    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mApplyBlur:Z

    const/4 v1, 0x0

    .line 27
    iput-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    .line 28
    iput-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    .line 29
    iput v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    .line 34
    iput-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mContext:Landroid/content/Context;

    .line 35
    iput-object p2, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    .line 36
    iput-boolean p3, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSpecialShape:Z

    .line 37
    iput-object p4, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    const/4 p1, 0x1

    .line 38
    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mEnableBlurSelfAsBackground:Z

    if-eqz p3, :cond_0

    const/4 p1, 0x2

    .line 40
    iput p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewBlurMode:I

    goto :goto_0

    .line 42
    :cond_0
    iput p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewBlurMode:I

    :goto_0
    return-void
.end method

.method private applyBlurInternal(Z)V
    .locals 3

    .line 103
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    if-nez v0, :cond_0

    return-void

    .line 106
    :cond_0
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsEnableBlur:Z

    if-nez v0, :cond_1

    return-void

    .line 109
    :cond_1
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mApplyBlur:Z

    if-eq v0, p1, :cond_5

    .line 110
    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mApplyBlur:Z

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 112
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    if-nez p1, :cond_2

    .line 113
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    invoke-interface {p1, p0}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V

    .line 115
    :cond_2
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    const/4 v1, 0x1

    invoke-interface {p1, v1}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onBlurApplyStateChanged(Z)V

    .line 118
    :try_start_0
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iget p1, p1, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/high16 p1, 0x40300000    # 2.75f

    .line 122
    :goto_0
    iget-boolean v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mEnableBlurSelfAsBackground:Z

    if-eqz v1, :cond_3

    .line 123
    iget-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    iget v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    int-to-float v2, v2

    mul-float/2addr v2, p1

    const/high16 p1, 0x3f000000    # 0.5f

    add-float/2addr v2, p1

    float-to-int p1, v2

    iget v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewBlurMode:I

    invoke-static {v1, p1, v2}, Lmiuix/core/util/MiuiBlurUtils;->setBackgroundBlur(Landroid/view/View;II)Z

    goto :goto_1

    .line 126
    :cond_3
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    iget v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewBlurMode:I

    invoke-static {p1, v1}, Lmiuix/core/util/MiuiBlurUtils;->setViewBlurMode(Landroid/view/View;I)Z

    .line 128
    :goto_1
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    array-length v1, p1

    if-ge v0, v1, :cond_5

    .line 129
    iget-object v1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    aget p1, p1, v0

    iget-object v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    aget v2, v2, v0

    invoke-static {v1, p1, v2}, Lmiuix/core/util/MiuiBlurUtils;->addBackgroundBlenderColor(Landroid/view/View;II)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 132
    :cond_4
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-static {p1}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlur(Landroid/view/View;)Z

    .line 133
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-static {p1}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlenderColor(Landroid/view/View;)Z

    .line 134
    iget-object p0, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    invoke-interface {p0, v0}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onBlurApplyStateChanged(Z)V

    :cond_5
    return-void
.end method

.method public static getFinalBlendColorForViewByBackgroundColor(Landroid/content/Context;I[I)[I
    .locals 3

    .line 213
    array-length v0, p2

    new-array v1, v0, [I

    const/4 v2, 0x0

    .line 214
    invoke-static {p2, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    if-nez p1, :cond_0

    const v0, 0x1010054

    .line 216
    invoke-static {p0, v0}, Lmiuix/internal/util/AttributeResolver;->resolveDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    .line 217
    instance-of v0, p0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 218
    check-cast p0, Landroid/graphics/drawable/ColorDrawable;

    invoke-virtual {p0}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    :cond_0
    if-eqz p1, :cond_1

    const p0, 0xffffff

    and-int/2addr p0, p1

    const/high16 p1, -0x1000000

    const/4 v0, 0x1

    .line 223
    aget p2, p2, v0

    and-int/2addr p1, p2

    or-int/2addr p0, p1

    aput p0, v1, v0

    :cond_1
    return-object v1
.end method

.method public static getFinalBlendColorForViewByBackgroundColor(Landroid/content/Context;Landroid/graphics/drawable/Drawable;[I)[I
    .locals 1

    if-eqz p1, :cond_0

    .line 204
    instance-of v0, p1, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_0

    .line 205
    check-cast p1, Landroid/graphics/drawable/ColorDrawable;

    .line 206
    invoke-virtual {p1}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 209
    :goto_0
    invoke-static {p0, p1, p2}, Lmiuix/view/MiuiBlurUiHelper;->getFinalBlendColorForViewByBackgroundColor(Landroid/content/Context;I[I)[I

    move-result-object p0

    return-object p0
.end method

.method private setEnableBlurInternal(Z)V
    .locals 1

    .line 83
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsEnableBlur:Z

    if-eq v0, p1, :cond_1

    if-nez p1, :cond_0

    .line 85
    invoke-virtual {p0}, Lmiuix/view/MiuiBlurUiHelper;->isApplyBlur()Z

    move-result v0

    iput-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedApplyBlur:Z

    const/4 v0, 0x0

    .line 86
    invoke-direct {p0, v0}, Lmiuix/view/MiuiBlurUiHelper;->applyBlurInternal(Z)V

    .line 88
    :cond_0
    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsEnableBlur:Z

    .line 89
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    invoke-interface {v0, p1}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onBlurEnableStateChanged(Z)V

    if-eqz p1, :cond_1

    .line 90
    iget-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedApplyBlur:Z

    if-eqz p1, :cond_1

    const/4 p1, 0x1

    .line 91
    invoke-direct {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlurInternal(Z)V

    :cond_1
    return-void
.end method


# virtual methods
.method public applyBlur(Z)V
    .locals 0

    .line 98
    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedApplyBlur:Z

    .line 99
    invoke-direct {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->applyBlurInternal(Z)V

    return-void
.end method

.method public isApplyBlur()Z
    .locals 0

    .line 141
    iget-boolean p0, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedApplyBlur:Z

    return p0
.end method

.method public isEnableBlur()Z
    .locals 0

    .line 79
    iget-boolean p0, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedEnableBlur:Z

    return p0
.end method

.method public isSupportBlur()Z
    .locals 0

    .line 63
    iget-boolean p0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    return p0
.end method

.method public onConfigChanged()V
    .locals 1

    .line 155
    invoke-virtual {p0}, Lmiuix/view/MiuiBlurUiHelper;->resetBlurParams()V

    .line 156
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->isEffectEnable(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 157
    invoke-direct {p0, v0}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlurInternal(Z)V

    goto :goto_0

    .line 158
    :cond_0
    invoke-static {}, Lmiuix/core/util/MiuiBlurUtils;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 159
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->isEffectEnable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lmiuix/view/MiuiBlurUiHelper;->isEnableBlur()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    .line 160
    invoke-direct {p0, v0}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlurInternal(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public refreshBlur()V
    .locals 4

    .line 172
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mApplyBlur:Z

    if-eqz v0, :cond_3

    .line 173
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    const/4 v1, 0x0

    if-nez v0, :cond_1

    .line 174
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mEnableBlurSelfAsBackground:Z

    if-eqz v0, :cond_0

    .line 175
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlur(Landroid/view/View;)Z

    goto :goto_0

    .line 177
    :cond_0
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-static {v0, v1}, Lmiuix/core/util/MiuiBlurUtils;->setViewBlurMode(Landroid/view/View;I)Z

    .line 179
    :goto_0
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-static {v0}, Lmiuix/core/util/MiuiBlurUtils;->clearBackgroundBlenderColor(Landroid/view/View;)Z

    .line 180
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    invoke-interface {v0, p0}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onCreateBlurParams(Lmiuix/view/MiuiBlurUiHelper;)V

    .line 184
    :cond_1
    :try_start_0
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const/high16 v0, 0x40300000    # 2.75f

    .line 188
    :goto_1
    iget-object v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mCallback:Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;

    const/4 v3, 0x1

    invoke-interface {v2, v3}, Lmiuix/view/MiuiBlurUiHelper$BlurStateCallback;->onBlurApplyStateChanged(Z)V

    .line 189
    iget-boolean v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mEnableBlurSelfAsBackground:Z

    if-eqz v2, :cond_2

    .line 190
    iget-object v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    iget v3, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    int-to-float v3, v3

    mul-float/2addr v3, v0

    const/high16 v0, 0x3f000000    # 0.5f

    add-float/2addr v3, v0

    float-to-int v0, v3

    iget-boolean v3, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSpecialShape:Z

    invoke-static {v2, v0, v3}, Lmiuix/core/util/MiuiBlurUtils;->setBackgroundBlur(Landroid/view/View;IZ)Z

    goto :goto_2

    .line 193
    :cond_2
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    iget v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewBlurMode:I

    invoke-static {v0, v2}, Lmiuix/core/util/MiuiBlurUtils;->setViewBlurMode(Landroid/view/View;I)Z

    .line 195
    :goto_2
    iget-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    array-length v2, v0

    if-ge v1, v2, :cond_3

    .line 196
    iget-object v2, p0, Lmiuix/view/MiuiBlurUiHelper;->mViewApplyBlur:Landroid/view/View;

    aget v0, v0, v1

    iget-object v3, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    aget v3, v3, v1

    invoke-static {v2, v0, v3}, Lmiuix/core/util/MiuiBlurUtils;->addBackgroundBlenderColor(Landroid/view/View;II)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_3
    return-void
.end method

.method public resetBlurParams()V
    .locals 1

    const/4 v0, 0x0

    .line 166
    iput-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    .line 167
    iput-object v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    const/4 v0, 0x0

    .line 168
    iput v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    return-void
.end method

.method public setBlurParams([I[II)V
    .locals 0

    .line 145
    iput-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColors:[I

    .line 146
    iput-object p2, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurBlendColorModes:[I

    .line 147
    iput p3, p0, Lmiuix/view/MiuiBlurUiHelper;->mBlurEffect:I

    return-void
.end method

.method public setEnableBlur(Z)V
    .locals 1

    .line 68
    iget-boolean v0, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    if-nez v0, :cond_0

    return-void

    .line 71
    :cond_0
    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedEnableBlur:Z

    .line 72
    iget-object p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lmiuix/core/util/MiuiBlurUtils;->isEffectEnable(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 73
    iget-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mNeedEnableBlur:Z

    invoke-direct {p0, p1}, Lmiuix/view/MiuiBlurUiHelper;->setEnableBlurInternal(Z)V

    :cond_1
    return-void
.end method

.method public setSupportBlur(Z)V
    .locals 0

    .line 58
    iput-boolean p1, p0, Lmiuix/view/MiuiBlurUiHelper;->mIsSupportBlur:Z

    return-void
.end method
