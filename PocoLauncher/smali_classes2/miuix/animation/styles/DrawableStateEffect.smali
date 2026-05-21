.class public abstract Lmiuix/animation/styles/DrawableStateEffect;
.super Ljava/lang/Object;
.source "DrawableStateEffect.java"


# static fields
.field public static final STATE_ACTIVATED:[I

.field public static final STATE_ACTIVATED_PRESSED:[I

.field public static final STATE_CHECKED:[I

.field public static final STATE_DRAG_HOVERED:[I

.field public static final STATE_FOCUSED:[I

.field public static final STATE_HOVERED:[I

.field public static final STATE_HOVERED_ACTIVATED:[I

.field public static final STATE_HOVERED_CHECKED:[I

.field public static final STATE_HOVERED_PRESSED:[I

.field public static final STATE_HOVERED_SELECTED:[I

.field public static final STATE_PRESSED:[I

.field public static final STATE_SELECTED:[I

.field public static final STATE_SELECTED_PRESSED:[I


# instance fields
.field private mActivated:Z

.field protected mActivatedPressedState:Lmiuix/animation/controller/AnimState;

.field protected mActivatedState:Lmiuix/animation/controller/AnimState;

.field private mChecked:Z

.field protected mCheckedState:Lmiuix/animation/controller/AnimState;

.field protected mEnableAnim:Z

.field private mFocused:Z

.field protected mFocusedState:Lmiuix/animation/controller/AnimState;

.field protected mFolmeState:Lmiuix/animation/IStateStyle;

.field private mHovered:Z

.field protected mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

.field protected mHoveredCheckedState:Lmiuix/animation/controller/AnimState;

.field protected mHoveredPressedState:Lmiuix/animation/controller/AnimState;

.field protected mHoveredState:Lmiuix/animation/controller/AnimState;

.field protected mNormalState:Lmiuix/animation/controller/AnimState;

.field private mPressed:Z

.field protected mPressedState:Lmiuix/animation/controller/AnimState;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a7

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 12
    sput-object v1, Lmiuix/animation/styles/DrawableStateEffect;->STATE_PRESSED:[I

    new-array v1, v0, [I

    const v2, 0x1010369

    aput v2, v1, v3

    .line 13
    sput-object v1, Lmiuix/animation/styles/DrawableStateEffect;->STATE_DRAG_HOVERED:[I

    new-array v1, v0, [I

    const v2, 0x10100a1

    aput v2, v1, v3

    .line 14
    sput-object v1, Lmiuix/animation/styles/DrawableStateEffect;->STATE_SELECTED:[I

    const/4 v1, 0x2

    new-array v2, v1, [I

    .line 15
    fill-array-data v2, :array_0

    sput-object v2, Lmiuix/animation/styles/DrawableStateEffect;->STATE_SELECTED_PRESSED:[I

    new-array v2, v1, [I

    .line 16
    fill-array-data v2, :array_1

    sput-object v2, Lmiuix/animation/styles/DrawableStateEffect;->STATE_HOVERED_ACTIVATED:[I

    new-array v2, v1, [I

    .line 18
    fill-array-data v2, :array_2

    sput-object v2, Lmiuix/animation/styles/DrawableStateEffect;->STATE_HOVERED_SELECTED:[I

    new-array v2, v1, [I

    .line 20
    fill-array-data v2, :array_3

    sput-object v2, Lmiuix/animation/styles/DrawableStateEffect;->STATE_HOVERED_PRESSED:[I

    new-array v2, v0, [I

    const v4, 0x1010367

    aput v4, v2, v3

    .line 22
    sput-object v2, Lmiuix/animation/styles/DrawableStateEffect;->STATE_HOVERED:[I

    new-array v2, v0, [I

    const v4, 0x10102fe

    aput v4, v2, v3

    .line 23
    sput-object v2, Lmiuix/animation/styles/DrawableStateEffect;->STATE_ACTIVATED:[I

    new-array v2, v1, [I

    .line 24
    fill-array-data v2, :array_4

    sput-object v2, Lmiuix/animation/styles/DrawableStateEffect;->STATE_ACTIVATED_PRESSED:[I

    new-array v2, v0, [I

    const v4, 0x10100a0

    aput v4, v2, v3

    .line 25
    sput-object v2, Lmiuix/animation/styles/DrawableStateEffect;->STATE_CHECKED:[I

    new-array v1, v1, [I

    .line 26
    fill-array-data v1, :array_5

    sput-object v1, Lmiuix/animation/styles/DrawableStateEffect;->STATE_HOVERED_CHECKED:[I

    new-array v0, v0, [I

    const v1, 0x101009c

    aput v1, v0, v3

    .line 28
    sput-object v0, Lmiuix/animation/styles/DrawableStateEffect;->STATE_FOCUSED:[I

    return-void

    nop

    :array_0
    .array-data 4
        0x10100a1
        0x10100a7
    .end array-data

    :array_1
    .array-data 4
        0x1010367
        0x10102fe
    .end array-data

    :array_2
    .array-data 4
        0x1010367
        0x10100a1
    .end array-data

    :array_3
    .array-data 4
        0x1010367
        0x10100a7
    .end array-data

    :array_4
    .array-data 4
        0x10102fe
        0x10100a7
    .end array-data

    :array_5
    .array-data 4
        0x1010367
        0x10100a0
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toActivatedPressedState()Z
    .locals 5

    .line 130
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    if-eqz v2, :cond_0

    return v1

    :cond_0
    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 135
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    .line 136
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_1

    .line 137
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivatedPressedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getActivateEnterConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 139
    :cond_1
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToActivatedPressed()V

    :goto_0
    return v2

    .line 143
    :cond_2
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    if-eqz v0, :cond_4

    .line 144
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    .line 145
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_3

    .line 146
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivatedPressedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getActivateEnterConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 148
    :cond_3
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToActivatedPressed()V

    :goto_1
    return v2

    .line 152
    :cond_4
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    .line 153
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    .line 154
    iput-boolean v1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 155
    iput-boolean v1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFocused:Z

    .line 156
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_5

    .line 157
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivatedPressedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getPressEnterConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 159
    :cond_5
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToActivatedPressed()V

    :goto_2
    return v2
.end method

.method private toActivatedState()Z
    .locals 5

    .line 367
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 369
    iput-boolean v1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    .line 370
    iput-boolean v1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 371
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    .line 372
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_0

    .line 373
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getPressExitConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 375
    :cond_0
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToActivated()V

    :goto_0
    return v2

    .line 379
    :cond_1
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    if-eqz v0, :cond_3

    .line 381
    iput-boolean v1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 382
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    .line 383
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_2

    .line 384
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getHoverExitConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 386
    :cond_2
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToActivated()V

    :goto_1
    return v2

    .line 390
    :cond_3
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    if-eqz v0, :cond_4

    return v1

    .line 395
    :cond_4
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    .line 396
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_5

    .line 397
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getActivateEnterConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 399
    :cond_5
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToActivated()V

    :goto_2
    return v2
.end method

.method private toCheckedState()Z
    .locals 5

    .line 405
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 407
    iput-boolean v1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    .line 408
    iput-boolean v1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 409
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mChecked:Z

    .line 410
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_0

    .line 411
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mCheckedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getPressExitConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 413
    :cond_0
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToChecked()V

    :goto_0
    return v2

    .line 417
    :cond_1
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    if-eqz v0, :cond_3

    .line 419
    iput-boolean v1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 420
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mChecked:Z

    .line 421
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_2

    .line 422
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mCheckedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getHoverExitConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 424
    :cond_2
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToChecked()V

    :goto_1
    return v2

    .line 428
    :cond_3
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mChecked:Z

    if-eqz v0, :cond_4

    return v1

    .line 433
    :cond_4
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mChecked:Z

    .line 434
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_5

    .line 435
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mCheckedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getActivateEnterConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 437
    :cond_5
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToChecked()V

    :goto_2
    return v2
.end method

.method private toFocusedState()Z
    .locals 5

    .line 336
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 338
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    .line 339
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 340
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    .line 341
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mChecked:Z

    .line 342
    iput-boolean v1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFocused:Z

    .line 343
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFocusedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getPressExitConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 346
    :cond_0
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToFocused()V

    :goto_0
    return v1

    .line 350
    :cond_1
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFocused:Z

    if-eqz v0, :cond_2

    return v2

    .line 355
    :cond_2
    iput-boolean v1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFocused:Z

    .line 356
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    .line 357
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mChecked:Z

    .line 358
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_3

    .line 359
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFocusedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getHoverEnterConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 361
    :cond_3
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToFocused()V

    :goto_1
    return v1
.end method

.method private toHoveredActivatedState()Z
    .locals 5

    .line 165
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 167
    iput-boolean v1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    .line 168
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 169
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    .line 170
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_0

    .line 171
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getPressExitConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 173
    :cond_0
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToHoveredActivated()V

    :goto_0
    return v2

    .line 177
    :cond_1
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    if-eqz v3, :cond_2

    return v1

    :cond_2
    if-eqz v0, :cond_4

    .line 183
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    .line 184
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_3

    .line 185
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getActivateEnterConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 187
    :cond_3
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToHoveredActivated()V

    :goto_1
    return v2

    .line 191
    :cond_4
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    if-eqz v0, :cond_6

    .line 193
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 194
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_5

    .line 195
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getHoverEnterConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 197
    :cond_5
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToHoveredActivated()V

    :goto_2
    return v2

    .line 202
    :cond_6
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    .line 203
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 204
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_7

    .line 205
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHoveredActivatedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getHoverEnterConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_3

    .line 207
    :cond_7
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToHoveredActivated()V

    :goto_3
    return v2
.end method

.method private toHoveredCheckedState()Z
    .locals 5

    .line 257
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 259
    iput-boolean v1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    .line 260
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 261
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mChecked:Z

    .line 262
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHoveredCheckedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getPressExitConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 265
    :cond_0
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToHoveredChecked()V

    :goto_0
    return v2

    .line 269
    :cond_1
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    if-eqz v0, :cond_2

    iget-boolean v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mChecked:Z

    if-eqz v3, :cond_2

    return v1

    :cond_2
    if-eqz v0, :cond_4

    .line 275
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mChecked:Z

    .line 276
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_3

    .line 277
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHoveredCheckedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getActivateEnterConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 279
    :cond_3
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToHoveredChecked()V

    :goto_1
    return v2

    .line 283
    :cond_4
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mChecked:Z

    if-eqz v0, :cond_6

    .line 285
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 286
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_5

    .line 287
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHoveredCheckedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getHoverEnterConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 289
    :cond_5
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToHoveredChecked()V

    :goto_2
    return v2

    .line 294
    :cond_6
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mChecked:Z

    .line 295
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 296
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_7

    .line 297
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHoveredCheckedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getHoverEnterConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_3

    .line 299
    :cond_7
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToHoveredChecked()V

    :goto_3
    return v2
.end method

.method private toHoveredPressedState()Z
    .locals 5

    .line 213
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    if-eqz v2, :cond_0

    return v1

    .line 217
    :cond_0
    iget-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    .line 218
    iput-boolean v1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    .line 219
    iput-boolean v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 220
    iput-boolean v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    .line 221
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_1

    .line 222
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHoveredPressedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getHoverEnterConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v2, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 224
    :cond_1
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToHoveredPressed()V

    :goto_0
    return v3

    .line 228
    :cond_2
    iget-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    if-eqz v2, :cond_4

    .line 229
    iput-boolean v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 230
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_3

    .line 231
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHoveredPressedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getHoverEnterConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v2, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 233
    :cond_3
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToHoveredPressed()V

    :goto_1
    return v3

    :cond_4
    if-eqz v0, :cond_6

    .line 238
    iput-boolean v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    .line 239
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_5

    .line 240
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHoveredPressedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getPressEnterConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v2, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 242
    :cond_5
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToHoveredPressed()V

    :goto_2
    return v3

    .line 246
    :cond_6
    iput-boolean v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    .line 247
    iput-boolean v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 248
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_7

    .line 249
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHoveredPressedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v3, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getHoverEnterConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v1

    invoke-interface {v0, v2, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_3

    .line 251
    :cond_7
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToHoveredPressed()V

    :goto_3
    return v3
.end method

.method private toHoveredState()Z
    .locals 5

    .line 305
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 307
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    .line 308
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    .line 309
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mChecked:Z

    .line 310
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFocused:Z

    .line 311
    iput-boolean v1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 312
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_0

    .line 313
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHoveredState:Lmiuix/animation/controller/AnimState;

    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getPressExitConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 315
    :cond_0
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToHovered()V

    :goto_0
    return v1

    .line 319
    :cond_1
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    if-eqz v0, :cond_2

    return v2

    .line 324
    :cond_2
    iput-boolean v1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 325
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    .line 326
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mChecked:Z

    .line 327
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_3

    .line 328
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHoveredState:Lmiuix/animation/controller/AnimState;

    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getHoverEnterConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 330
    :cond_3
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToHovered()V

    :goto_1
    return v1
.end method

.method private toNormalState()Z
    .locals 5

    .line 443
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 445
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    .line 446
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 447
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFocused:Z

    .line 448
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    .line 449
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mChecked:Z

    .line 450
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_0

    .line 451
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mNormalState:Lmiuix/animation/controller/AnimState;

    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getPressExitConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 453
    :cond_0
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToNormal()V

    :goto_0
    return v1

    .line 457
    :cond_1
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    if-eqz v0, :cond_3

    .line 459
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 460
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    .line 461
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mChecked:Z

    .line 462
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_2

    .line 463
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mNormalState:Lmiuix/animation/controller/AnimState;

    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getHoverExitConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_1

    .line 465
    :cond_2
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToNormal()V

    :goto_1
    return v1

    .line 469
    :cond_3
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFocused:Z

    if-eqz v0, :cond_5

    .line 471
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFocused:Z

    .line 472
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    .line 473
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mChecked:Z

    .line 474
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_4

    .line 475
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mNormalState:Lmiuix/animation/controller/AnimState;

    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getHoverExitConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_2

    .line 477
    :cond_4
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToNormal()V

    :goto_2
    return v1

    .line 481
    :cond_5
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    if-eqz v0, :cond_7

    .line 483
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    .line 484
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_6

    .line 485
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mNormalState:Lmiuix/animation/controller/AnimState;

    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getActivateExitConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_3

    .line 487
    :cond_6
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToNormal()V

    :goto_3
    return v1

    .line 491
    :cond_7
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mChecked:Z

    if-eqz v0, :cond_9

    .line 493
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mChecked:Z

    .line 494
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    if-eqz v0, :cond_8

    .line 495
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mNormalState:Lmiuix/animation/controller/AnimState;

    new-array v4, v1, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getActivateExitConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object p0

    aput-object p0, v4, v2

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_4

    .line 497
    :cond_8
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToNormal()V

    :goto_4
    return v1

    :cond_9
    return v2
.end method

.method private toPressedState()Z
    .locals 6

    .line 112
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 117
    :cond_0
    iget-boolean v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_1

    .line 118
    iget-object v0, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFolmeState:Lmiuix/animation/IStateStyle;

    iget-object v3, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressedState:Lmiuix/animation/controller/AnimState;

    new-array v4, v2, [Lmiuix/animation/base/AnimConfig;

    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->getPressEnterConfig()Lmiuix/animation/base/AnimConfig;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-interface {v0, v3, v4}, Lmiuix/animation/IStateStyle;->to(Ljava/lang/Object;[Lmiuix/animation/base/AnimConfig;)Lmiuix/animation/IStateStyle;

    goto :goto_0

    .line 120
    :cond_1
    invoke-virtual {p0}, Lmiuix/animation/styles/DrawableStateEffect;->setToPressed()V

    .line 122
    :goto_0
    iput-boolean v2, p0, Lmiuix/animation/styles/DrawableStateEffect;->mPressed:Z

    .line 123
    iput-boolean v1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mHovered:Z

    .line 124
    iput-boolean v1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mActivated:Z

    .line 125
    iput-boolean v1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mFocused:Z

    return v2
.end method


# virtual methods
.method protected abstract getActivateEnterConfig()Lmiuix/animation/base/AnimConfig;
.end method

.method protected abstract getActivateExitConfig()Lmiuix/animation/base/AnimConfig;
.end method

.method protected abstract getHoverEnterConfig()Lmiuix/animation/base/AnimConfig;
.end method

.method protected abstract getHoverExitConfig()Lmiuix/animation/base/AnimConfig;
.end method

.method protected abstract getPressEnterConfig()Lmiuix/animation/base/AnimConfig;
.end method

.method protected abstract getPressExitConfig()Lmiuix/animation/base/AnimConfig;
.end method

.method public abstract initStates()V
.end method

.method public abstract jumpToCurrentState()V
.end method

.method public onStateChange([I)Z
    .locals 1

    .line 64
    sget-object v0, Lmiuix/animation/styles/DrawableStateEffect;->STATE_ACTIVATED_PRESSED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-nez v0, :cond_b

    sget-object v0, Lmiuix/animation/styles/DrawableStateEffect;->STATE_SELECTED_PRESSED:[I

    .line 65
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 68
    :cond_0
    sget-object v0, Lmiuix/animation/styles/DrawableStateEffect;->STATE_PRESSED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lmiuix/animation/styles/DrawableStateEffect;->STATE_DRAG_HOVERED:[I

    .line 69
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-nez v0, :cond_a

    sget-object v0, Lmiuix/animation/styles/DrawableStateEffect;->STATE_SELECTED:[I

    .line 70
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    .line 73
    :cond_1
    sget-object v0, Lmiuix/animation/styles/DrawableStateEffect;->STATE_FOCUSED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 74
    invoke-direct {p0}, Lmiuix/animation/styles/DrawableStateEffect;->toFocusedState()Z

    move-result p0

    return p0

    .line 76
    :cond_2
    sget-object v0, Lmiuix/animation/styles/DrawableStateEffect;->STATE_HOVERED_ACTIVATED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lmiuix/animation/styles/DrawableStateEffect;->STATE_HOVERED_SELECTED:[I

    .line 77
    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_0

    .line 80
    :cond_3
    sget-object v0, Lmiuix/animation/styles/DrawableStateEffect;->STATE_HOVERED_PRESSED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 81
    invoke-direct {p0}, Lmiuix/animation/styles/DrawableStateEffect;->toHoveredPressedState()Z

    move-result p0

    return p0

    .line 83
    :cond_4
    sget-object v0, Lmiuix/animation/styles/DrawableStateEffect;->STATE_HOVERED_CHECKED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 84
    invoke-direct {p0}, Lmiuix/animation/styles/DrawableStateEffect;->toHoveredCheckedState()Z

    move-result p0

    return p0

    .line 86
    :cond_5
    sget-object v0, Lmiuix/animation/styles/DrawableStateEffect;->STATE_HOVERED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 87
    invoke-direct {p0}, Lmiuix/animation/styles/DrawableStateEffect;->toHoveredState()Z

    move-result p0

    return p0

    .line 89
    :cond_6
    sget-object v0, Lmiuix/animation/styles/DrawableStateEffect;->STATE_ACTIVATED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 90
    invoke-direct {p0}, Lmiuix/animation/styles/DrawableStateEffect;->toActivatedState()Z

    move-result p0

    return p0

    .line 92
    :cond_7
    sget-object v0, Lmiuix/animation/styles/DrawableStateEffect;->STATE_CHECKED:[I

    invoke-static {v0, p1}, Landroid/util/StateSet;->stateSetMatches([I[I)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 93
    invoke-direct {p0}, Lmiuix/animation/styles/DrawableStateEffect;->toCheckedState()Z

    move-result p0

    return p0

    .line 95
    :cond_8
    invoke-direct {p0}, Lmiuix/animation/styles/DrawableStateEffect;->toNormalState()Z

    move-result p0

    return p0

    .line 78
    :cond_9
    :goto_0
    invoke-direct {p0}, Lmiuix/animation/styles/DrawableStateEffect;->toHoveredActivatedState()Z

    move-result p0

    return p0

    .line 71
    :cond_a
    :goto_1
    invoke-direct {p0}, Lmiuix/animation/styles/DrawableStateEffect;->toPressedState()Z

    move-result p0

    return p0

    .line 66
    :cond_b
    :goto_2
    invoke-direct {p0}, Lmiuix/animation/styles/DrawableStateEffect;->toActivatedPressedState()Z

    move-result p0

    return p0
.end method

.method public setEnableAnim(Z)V
    .locals 0

    .line 53
    iput-boolean p1, p0, Lmiuix/animation/styles/DrawableStateEffect;->mEnableAnim:Z

    return-void
.end method

.method protected abstract setToActivated()V
.end method

.method protected abstract setToActivatedPressed()V
.end method

.method protected abstract setToChecked()V
.end method

.method protected abstract setToCheckedPressed()V
.end method

.method protected abstract setToFocused()V
.end method

.method protected abstract setToFocusedPressed()V
.end method

.method protected abstract setToHovered()V
.end method

.method protected abstract setToHoveredActivated()V
.end method

.method protected abstract setToHoveredChecked()V
.end method

.method protected abstract setToHoveredPressed()V
.end method

.method protected abstract setToNormal()V
.end method

.method protected abstract setToPressed()V
.end method
