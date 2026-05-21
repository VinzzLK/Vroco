.class public Lcom/android/systemui/shared/recents/model/Task;
.super Ljava/lang/Object;
.source "Task.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/recents/model/Task$SnapshotCallback;,
        Lcom/android/systemui/shared/recents/model/Task$TaskKey;,
        Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;
    }
.end annotation


# static fields
.field public static final PLATFORM_ANDROID_CAR_PAD:Ljava/lang/String; = "AndroidPadCar"

.field public static final PLATFORM_ANDROID_PAD:Ljava/lang/String; = "AndroidPad"

.field public static final PLATFORM_ANDROID_PHONE:Ljava/lang/String; = "AndroidPhone"

.field public static final PLATFORM_MAC:Ljava/lang/String; = "Mac"

.field public static final PLATFORM_WINDOWS:Ljava/lang/String; = "Windows"

.field public static final TAG:Ljava/lang/String; = "Task"

.field public static final VT_CAMERA_COMPONENT_NAME:Landroid/content/ComponentName;

.field public static sVtCameraDeviceName:Ljava/lang/String;

.field public static sVtCameraEnabled:Z

.field public static sVtCameraTaskText:Ljava/lang/String;


# instance fields
.field public baseActivity:Landroid/content/ComponentName;

.field private bottomPercent:F

.field public bounds:Landroid/graphics/Rect;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public colorBackground:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public colorPrimary:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private cropCti1Bounds:Landroid/graphics/Rect;

.field private cropCti2Bounds:Landroid/graphics/Rect;

.field public cti1Bounds:Landroid/graphics/Rect;

.field public cti1Icon:Landroid/graphics/drawable/Drawable;

.field public cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

.field public cti1TaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public cti1TitleDescription:Ljava/lang/String;

.field public cti2Bounds:Landroid/graphics/Rect;

.field public cti2Icon:Landroid/graphics/drawable/Drawable;

.field public cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

.field public cti2TaskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public cti2TitleDescription:Ljava/lang/String;

.field private defaultPercent:F

.field private hasMultipleTasks:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field private is9_1SplitMode:Z

.field public isDockable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isLaunchTarget:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isLocked:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isStackTask:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public isSystemApp:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        deepExport = true
        prefix = "key_"
    .end annotation
.end field

.field private leftPercent:F

.field private mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;",
            ">;"
        }
    .end annotation
.end field

.field private mNeedHide:Z

.field public resizeMode:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private rightPercent:F

.field public secondThumbnail:Landroid/graphics/Bitmap;

.field public stagedSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

.field public taskDescription:Landroid/app/ActivityManager$TaskDescription;

.field public temporarySortIndexInStack:I

.field public thumbnail:Landroid/graphics/Bitmap;

.field public title:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public titleDescription:Ljava/lang/String;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field public topActivity:Landroid/content/ComponentName;
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field

.field private topPercent:F

.field public useLightOnPrimaryColor:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "recents"
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 60
    new-instance v0, Landroid/content/ComponentName;

    const-string v1, "com.milink.service"

    const-string v2, "com.xiaomi.vtcamera.activities.CameraServerActivity"

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/systemui/shared/recents/model/Task;->VT_CAMERA_COMPONENT_NAME:Landroid/content/ComponentName;

    const/4 v0, 0x0

    sput-boolean v0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraEnabled:Z

    const-string v0, ""

    .line 61
    sput-object v0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraDeviceName:Ljava/lang/String;

    .line 62
    sput-object v0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraTaskText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 312
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;IIZZZZLandroid/graphics/Rect;Landroid/app/ActivityManager$TaskDescription;ILandroid/content/ComponentName;Landroid/content/ComponentName;ZZLcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Rect;Lcom/android/systemui/shared/recents/model/Task$TaskKey;Landroid/graphics/drawable/Drawable;Ljava/lang/String;Landroid/app/ActivityManager$TaskDescription;Landroid/graphics/Rect;Lcom/android/wm/shell/util/StagedSplitBounds;)V
    .locals 10

    move-object v0, p0

    move/from16 v1, p6

    move/from16 v2, p18

    move-object/from16 v3, p23

    move-object/from16 v4, p28

    move-object/from16 v5, p29

    .line 328
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 305
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    iput-object v6, v0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    move-object v6, p1

    .line 329
    iput-object v6, v0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    move-object v6, p2

    .line 330
    iput-object v6, v0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    move-object v6, p3

    .line 331
    invoke-virtual {p0, p3}, Lcom/android/systemui/shared/recents/model/Task;->setThumbnail(Landroid/graphics/Bitmap;)V

    move-object v6, p4

    .line 332
    iput-object v6, v0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    move-object v6, p5

    .line 333
    iput-object v6, v0, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    .line 334
    iput v1, v0, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    move/from16 v6, p7

    .line 335
    iput v6, v0, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    const/4 v6, -0x1

    .line 336
    invoke-static {v1, v6}, Lcom/android/systemui/shared/recents/utilities/Utilities;->computeContrastBetweenColors(II)F

    move-result v1

    const/high16 v6, 0x40400000    # 3.0f

    cmpl-float v1, v1, v6

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-lez v1, :cond_0

    move v1, v6

    goto :goto_0

    :cond_0
    move v1, v7

    :goto_0
    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->useLightOnPrimaryColor:Z

    move-object/from16 v1, p12

    .line 338
    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->bounds:Landroid/graphics/Rect;

    move-object/from16 v1, p13

    .line 339
    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    move/from16 v1, p8

    .line 340
    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    move/from16 v1, p9

    .line 341
    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->isStackTask:Z

    move/from16 v1, p10

    .line 342
    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->isSystemApp:Z

    move/from16 v1, p11

    .line 343
    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    move/from16 v1, p14

    .line 344
    iput v1, v0, Lcom/android/systemui/shared/recents/model/Task;->resizeMode:I

    move-object/from16 v1, p15

    .line 345
    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    move-object/from16 v1, p16

    .line 346
    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->baseActivity:Landroid/content/ComponentName;

    move/from16 v1, p17

    .line 347
    iput-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    .line 348
    iput-boolean v2, v0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    .line 349
    sget-boolean v1, Lcom/android/systemui/shared/recents/utilities/Utilities;->sIsLargeScreenMode:Z

    if-eqz v1, :cond_1

    if-eqz v2, :cond_1

    invoke-virtual/range {p23 .. p23}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getDeviceWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v8, 0x3fd999999999999aL    # 0.4

    cmpg-double v1, v1, v8

    if-ltz v1, :cond_2

    invoke-virtual/range {p23 .. p23}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    invoke-static {}, Lcom/android/systemui/shared/recents/utilities/Utilities;->getDeviceWidth()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-double v1, v1

    const-wide v8, 0x3fe3333333333333L    # 0.6

    cmpl-double v1, v1, v8

    if-lez v1, :cond_1

    goto :goto_1

    :cond_1
    move v6, v7

    :cond_2
    :goto_1
    iput-boolean v6, v0, Lcom/android/systemui/shared/recents/model/Task;->is9_1SplitMode:Z

    .line 350
    iput-object v5, v0, Lcom/android/systemui/shared/recents/model/Task;->stagedSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    move-object/from16 v1, p19

    .line 353
    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    move-object/from16 v1, p20

    .line 354
    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti1Icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v1, p21

    .line 355
    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti1TitleDescription:Ljava/lang/String;

    move-object/from16 v1, p22

    .line 356
    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti1TaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 357
    iput-object v3, v0, Lcom/android/systemui/shared/recents/model/Task;->cti1Bounds:Landroid/graphics/Rect;

    move-object/from16 v1, p24

    .line 360
    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    move-object/from16 v1, p25

    .line 361
    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti2Icon:Landroid/graphics/drawable/Drawable;

    move-object/from16 v1, p26

    .line 362
    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti2TitleDescription:Ljava/lang/String;

    move-object/from16 v1, p27

    .line 363
    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cti2TaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 364
    iput-object v4, v0, Lcom/android/systemui/shared/recents/model/Task;->cti2Bounds:Landroid/graphics/Rect;

    if-eqz v4, :cond_4

    if-eqz v3, :cond_4

    if-eqz v6, :cond_3

    .line 368
    invoke-static/range {p28 .. p28}, Lcom/android/systemui/shared/recents/utilities/Utilities;->specialCropRectInsideScreenBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cropCti2Bounds:Landroid/graphics/Rect;

    .line 369
    invoke-static/range {p23 .. p23}, Lcom/android/systemui/shared/recents/utilities/Utilities;->specialCropRectInsideScreenBounds(Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v1

    iput-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cropCti1Bounds:Landroid/graphics/Rect;

    goto :goto_2

    .line 371
    :cond_3
    iput-object v4, v0, Lcom/android/systemui/shared/recents/model/Task;->cropCti2Bounds:Landroid/graphics/Rect;

    .line 372
    iput-object v3, v0, Lcom/android/systemui/shared/recents/model/Task;->cropCti1Bounds:Landroid/graphics/Rect;

    .line 374
    :goto_2
    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cropCti1Bounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/Task;->cropCti2Bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->right:I

    iget-object v3, v0, Lcom/android/systemui/shared/recents/model/Task;->cropCti1Bounds:Landroid/graphics/Rect;

    iget v4, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v4

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/shared/recents/model/Task;->leftPercent:F

    .line 375
    invoke-virtual {v3}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/Task;->cropCti2Bounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v4, v0, Lcom/android/systemui/shared/recents/model/Task;->cropCti1Bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, v0, Lcom/android/systemui/shared/recents/model/Task;->topPercent:F

    .line 376
    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/Task;->cropCti2Bounds:Landroid/graphics/Rect;

    iget v3, v2, Landroid/graphics/Rect;->right:I

    iget-object v4, v0, Lcom/android/systemui/shared/recents/model/Task;->cropCti1Bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    int-to-float v3, v3

    div-float/2addr v1, v3

    iput v1, v0, Lcom/android/systemui/shared/recents/model/Task;->rightPercent:F

    .line 377
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v2, v0, Lcom/android/systemui/shared/recents/model/Task;->cropCti2Bounds:Landroid/graphics/Rect;

    iget v2, v2, Landroid/graphics/Rect;->bottom:I

    iget-object v3, v0, Lcom/android/systemui/shared/recents/model/Task;->cropCti1Bounds:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v3

    int-to-float v2, v2

    div-float/2addr v1, v2

    iput v1, v0, Lcom/android/systemui/shared/recents/model/Task;->bottomPercent:F

    :cond_4
    if-eqz v5, :cond_6

    .line 380
    iget-object v1, v0, Lcom/android/systemui/shared/recents/model/Task;->cropCti2Bounds:Landroid/graphics/Rect;

    if-eqz v1, :cond_6

    .line 381
    iget-boolean v1, v5, Lcom/android/wm/shell/util/StagedSplitBounds;->appsStackedVertically:Z

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v1, :cond_5

    .line 382
    iget-object v1, v5, Lcom/android/wm/shell/util/StagedSplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, v0, Lcom/android/systemui/shared/recents/model/Task;->cropCti2Bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->bottom:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    div-float/2addr v3, v2

    iput v3, v0, Lcom/android/systemui/shared/recents/model/Task;->defaultPercent:F

    goto :goto_3

    .line 384
    :cond_5
    iget-object v1, v5, Lcom/android/wm/shell/util/StagedSplitBounds;->visualDividerBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    iget-object v4, v0, Lcom/android/systemui/shared/recents/model/Task;->cropCti2Bounds:Landroid/graphics/Rect;

    iget v4, v4, Landroid/graphics/Rect;->right:I

    int-to-float v4, v4

    div-float/2addr v1, v4

    sub-float/2addr v3, v1

    div-float/2addr v3, v2

    iput v3, v0, Lcom/android/systemui/shared/recents/model/Task;->defaultPercent:F

    :cond_6
    :goto_3
    return-void
.end method


# virtual methods
.method public addCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V
    .locals 1

    .line 457
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 458
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public copyFrom(Lcom/android/systemui/shared/recents/model/Task;)V
    .locals 1

    .line 393
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 394
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 395
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/Task;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 396
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->secondThumbnail:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/Task;->setSecondThumbnail(Landroid/graphics/Bitmap;)V

    .line 397
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    .line 398
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    .line 399
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    iput v0, p0, Lcom/android/systemui/shared/recents/model/Task;->colorPrimary:I

    .line 400
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    iput v0, p0, Lcom/android/systemui/shared/recents/model/Task;->colorBackground:I

    .line 401
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->useLightOnPrimaryColor:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->useLightOnPrimaryColor:Z

    .line 402
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->bounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->bounds:Landroid/graphics/Rect;

    .line 403
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->taskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 404
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    .line 405
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isStackTask:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isStackTask:Z

    .line 406
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isSystemApp:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isSystemApp:Z

    .line 407
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    .line 408
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task;->resizeMode:I

    iput v0, p0, Lcom/android/systemui/shared/recents/model/Task;->resizeMode:I

    .line 409
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    .line 410
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->baseActivity:Landroid/content/ComponentName;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->baseActivity:Landroid/content/ComponentName;

    .line 411
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    .line 413
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 414
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Icon:Landroid/graphics/drawable/Drawable;

    .line 415
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1Bounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Bounds:Landroid/graphics/Rect;

    .line 416
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1TaskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1TaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 417
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti1TitleDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1TitleDescription:Ljava/lang/String;

    .line 419
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    .line 420
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Icon:Landroid/graphics/drawable/Drawable;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Icon:Landroid/graphics/drawable/Drawable;

    .line 421
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2Bounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Bounds:Landroid/graphics/Rect;

    .line 422
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2TaskDescription:Landroid/app/ActivityManager$TaskDescription;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2TaskDescription:Landroid/app/ActivityManager$TaskDescription;

    .line 423
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cti2TitleDescription:Ljava/lang/String;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2TitleDescription:Ljava/lang/String;

    .line 424
    iget-boolean v0, p1, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    iput-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    .line 425
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->stagedSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->stagedSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    .line 426
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task;->topPercent:F

    iput v0, p0, Lcom/android/systemui/shared/recents/model/Task;->topPercent:F

    .line 427
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task;->leftPercent:F

    iput v0, p0, Lcom/android/systemui/shared/recents/model/Task;->leftPercent:F

    .line 428
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task;->bottomPercent:F

    iput v0, p0, Lcom/android/systemui/shared/recents/model/Task;->bottomPercent:F

    .line 429
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task;->rightPercent:F

    iput v0, p0, Lcom/android/systemui/shared/recents/model/Task;->rightPercent:F

    .line 430
    iget v0, p1, Lcom/android/systemui/shared/recents/model/Task;->defaultPercent:F

    iput v0, p0, Lcom/android/systemui/shared/recents/model/Task;->defaultPercent:F

    .line 432
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cropCti2Bounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cropCti2Bounds:Landroid/graphics/Rect;

    .line 433
    iget-object v0, p1, Lcom/android/systemui/shared/recents/model/Task;->cropCti1Bounds:Landroid/graphics/Rect;

    iput-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cropCti1Bounds:Landroid/graphics/Rect;

    .line 434
    iget-boolean p1, p1, Lcom/android/systemui/shared/recents/model/Task;->is9_1SplitMode:Z

    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/Task;->is9_1SplitMode:Z

    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/PrintWriter;)V
    .locals 0

    .line 669
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 670
    iget-boolean p1, p0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-nez p1, :cond_0

    const-string p1, " dockable=N"

    .line 671
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 673
    :cond_0
    iget-boolean p1, p0, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    if-eqz p1, :cond_1

    const-string p1, " launchTarget=Y"

    .line 674
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    :cond_1
    const-string p1, " "

    .line 676
    invoke-virtual {p2, p1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {p2, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 677
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 0

    .line 639
    check-cast p1, Lcom/android/systemui/shared/recents/model/Task;

    .line 640
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object p1, p1, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->equals(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public getAnotherMultiTaskId(I)I
    .locals 1

    .line 559
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    if-eqz v0, :cond_1

    .line 560
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, v0, :cond_0

    .line 561
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    return p0

    .line 562
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, p0, :cond_1

    return v0

    :cond_1
    const/4 p0, -0x1

    return p0
.end method

.method public getBaseComponent()Landroid/content/ComponentName;
    .locals 1

    .line 627
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->baseActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 629
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public getLastActiveTime()J
    .locals 4

    .line 633
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-wide v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-wide v2, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-wide v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->lastActiveTime:J

    :goto_0
    return-wide v0
.end method

.method public getLeftOrTopPercent(Z)F
    .locals 2

    .line 732
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p1, :cond_3

    .line 735
    sget-boolean p1, Lcom/android/systemui/shared/recents/utilities/Utilities;->sIsLargeScreenMode:Z

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->stagedSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    iget-boolean v0, v0, Lcom/android/wm/shell/util/StagedSplitBounds;->appsStackedVertically:Z

    xor-int/lit8 v1, v0, 0x1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 739
    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task;->topPercent:F

    return p0

    .line 741
    :cond_2
    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task;->leftPercent:F

    return p0

    .line 737
    :cond_3
    :goto_0
    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task;->defaultPercent:F

    return p0
.end method

.method public getRightOrBottomPercent(Z)F
    .locals 2

    .line 745
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    if-nez p1, :cond_3

    .line 748
    sget-boolean p1, Lcom/android/systemui/shared/recents/utilities/Utilities;->sIsLargeScreenMode:Z

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->stagedSplitBounds:Lcom/android/wm/shell/util/StagedSplitBounds;

    iget-boolean v0, v0, Lcom/android/wm/shell/util/StagedSplitBounds;->appsStackedVertically:Z

    xor-int/lit8 v1, v0, 0x1

    xor-int/2addr p1, v1

    if-eqz p1, :cond_1

    goto :goto_0

    :cond_1
    if-eqz v0, :cond_2

    .line 752
    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task;->bottomPercent:F

    return p0

    .line 754
    :cond_2
    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task;->rightPercent:F

    return p0

    .line 750
    :cond_3
    :goto_0
    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task;->defaultPercent:F

    return p0
.end method

.method public getTaskKey(I)Lcom/android/systemui/shared/recents/model/Task$TaskKey;
    .locals 1

    .line 570
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    if-nez v0, :cond_0

    .line 571
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, v0, :cond_2

    return-object p0

    .line 574
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/Task;->isMultiPrimaryTask(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 575
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    return-object p0

    .line 576
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/Task;->isMultiSecondTask(I)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 577
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    return-object p0

    :cond_2
    const/4 p0, 0x0

    return-object p0
.end method

.method public getTopComponent()Landroid/content/ComponentName;
    .locals 1

    .line 618
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->topActivity:Landroid/content/ComponentName;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 620
    :cond_0
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->baseIntent:Landroid/content/Intent;

    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public hasCallBack()Z
    .locals 0

    .line 470
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result p0

    if-lez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public hasMultipleTasks()Z
    .locals 0

    .line 528
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    return p0
.end method

.method public is9_1Task()Z
    .locals 0

    .line 532
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task;->is9_1SplitMode:Z

    return p0
.end method

.method public isBlurThumbnail()Z
    .locals 2

    .line 493
    invoke-static {}, Lmiuix/device/DeviceUtils;->isMiuiLiteV2()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isThumbnailBlur:Z

    if-nez v0, :cond_1

    :cond_0
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isAccessLocked:Z

    if-nez v1, :cond_1

    iget-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    if-nez v1, :cond_1

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-nez v0, :cond_1

    .line 494
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->showVTCameraIcon()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 495
    :cond_1
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->useMultipleThumbnail()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isCoverThumbnail()Z
    .locals 0

    .line 515
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->isBlurThumbnail()Z

    move-result p0

    return p0
.end method

.method public isFreeformTask()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isInSmallWindow(Ljava/util/Set;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;)Z"
        }
    .end annotation

    .line 714
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->getBaseComponent()Landroid/content/ComponentName;

    move-result-object v0

    .line 715
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    if-nez v0, :cond_0

    goto :goto_0

    .line 719
    :cond_0
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;

    .line 720
    iget v1, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->stackId:I

    iget-object v3, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v4, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne v1, v4, :cond_1

    iget v0, v0, Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;->userId:I

    iget v1, v3, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->userId:I

    if-ne v0, v1, :cond_1

    const/4 p0, 0x1

    return p0

    :cond_2
    return v2

    :cond_3
    :goto_0
    const-string p0, "Task"

    const-string/jumbo p1, "updateIsNeedHideState: key or getBaseComponent is null, return."

    .line 716
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return v2
.end method

.method public isMultiPrimaryTask(I)Z
    .locals 1

    .line 551
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isMultiSecondTask(I)Z
    .locals 1

    .line 555
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isNeedHide()Z
    .locals 0

    .line 450
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task;->mNeedHide:Z

    return p0
.end method

.method public isProtected()Z
    .locals 1

    .line 691
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    if-nez v0, :cond_1

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public isSameTaskFromId(I)Z
    .locals 3

    .line 541
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_2

    .line 542
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-eq p1, v0, :cond_1

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :cond_1
    :goto_0
    return v1

    .line 546
    :cond_2
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->id:I

    if-ne p1, p0, :cond_3

    goto :goto_1

    :cond_3
    move v1, v2

    :goto_1
    return v1
.end method

.method public isSoscSplitModeNotSupportSplit(Z)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 728
    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public isSupportSplit()Z
    .locals 3

    .line 519
    invoke-static {}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->getInstance()Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/systemui/shared/recents/sosc/SoscSplitScreenController;->isSupportSosc()Z

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 520
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    return v1

    .line 522
    :cond_1
    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-nez p0, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    :goto_1
    return v1
.end method

.method public notifyMultipleTaskDataLoaded(Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Landroid/graphics/drawable/Drawable;Landroid/graphics/Bitmap;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V
    .locals 0

    .line 595
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Icon:Landroid/graphics/drawable/Drawable;

    .line 596
    iput-object p4, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Icon:Landroid/graphics/drawable/Drawable;

    .line 597
    invoke-virtual {p0, p2}, Lcom/android/systemui/shared/recents/model/Task;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 598
    invoke-virtual {p0, p5}, Lcom/android/systemui/shared/recents/model/Task;->setSecondThumbnail(Landroid/graphics/Bitmap;)V

    .line 599
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 601
    iget-object p4, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p4, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;

    invoke-interface {p4, p0, p3, p6}, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;->onTaskDataLoaded(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyTaskDataLoaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V
    .locals 1

    .line 585
    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 586
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/Task;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 587
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 p2, 0x0

    :goto_0
    if-ge p2, p1, :cond_0

    .line 589
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;

    invoke-interface {v0, p0, p3}, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;->onTaskDataLoaded(Lcom/android/systemui/shared/recents/model/Task;Lcom/android/systemui/shared/recents/model/TaskThumbnailInfo;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public notifyTaskDataUnloaded(Landroid/graphics/Bitmap;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 607
    iput-object p2, p0, Lcom/android/systemui/shared/recents/model/Task;->icon:Landroid/graphics/drawable/Drawable;

    .line 608
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/Task;->setThumbnail(Landroid/graphics/Bitmap;)V

    .line 609
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    :goto_0
    if-ltz p1, :cond_0

    .line 610
    iget-object p2, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;

    invoke-interface {p2}, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;->onTaskDataUnloaded()V

    add-int/lit8 p1, p1, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onLockedChange()V
    .locals 3

    .line 685
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_0
    if-ltz v0, :cond_0

    .line 686
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;

    iget-boolean v2, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    invoke-interface {v1, v2}, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;->onLockedChanged(Z)V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public printDetail()Ljava/lang/String;
    .locals 2

    .line 663
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", isLock="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", is9_1Task= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task;->is9_1SplitMode:Z

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public removeCallback(Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;)V
    .locals 0

    .line 466
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public setLocked(Z)V
    .locals 0

    .line 681
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    return-void
.end method

.method public setNeedHide(Z)V
    .locals 0

    .line 446
    iput-boolean p1, p0, Lcom/android/systemui/shared/recents/model/Task;->mNeedHide:Z

    return-void
.end method

.method public setSecondThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 442
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->secondThumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method public setStackId(I)V
    .locals 2

    .line 477
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v0, p1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->setStackId(I)V

    .line 478
    iget-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, p1, :cond_0

    .line 480
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;

    invoke-interface {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskCallbacks;->onTaskStackIdChanged()V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method public setThumbnail(Landroid/graphics/Bitmap;)V
    .locals 0

    .line 438
    iput-object p1, p0, Lcom/android/systemui/shared/recents/model/Task;->thumbnail:Landroid/graphics/Bitmap;

    return-void
.end method

.method public showPrivacyProtectIcon()Z
    .locals 2

    .line 499
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->isBlurThumbnail()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    if-nez v1, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->showVTCameraIcon()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showScreeningIcon()Z
    .locals 2

    .line 503
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v1, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isScreening:Z

    if-eqz v1, :cond_0

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->showVTCameraIcon()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showVTCameraIcon()Z
    .locals 1

    .line 511
    sget-boolean v0, Lcom/android/systemui/shared/recents/model/Task;->sVtCameraEnabled:Z

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean p0, p0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isVtCamera:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public showWorldCirculateIcon()Z
    .locals 1

    .line 507
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    iget-boolean v0, v0, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->isWorldCirculate:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->showVTCameraIcon()Z

    move-result p0

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 645
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", title="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", titleDescription="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->titleDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", bounds="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->bounds:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLaunchTarget="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task;->isLaunchTarget:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isStackTask="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task;->isStackTask:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isSystemApp="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task;->isSystemApp:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isDockable="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task;->isDockable:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", baseActivity="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->baseActivity:Landroid/content/ComponentName;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", isLocked="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task;->isLocked:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mNeedHide="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task;->mNeedHide:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", hasMultipleTasks="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", cti1Key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 657
    iget-object v1, p0, Lcom/android/systemui/shared/recents/model/Task;->cti1Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    const-string v2, ""

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", cti2Key="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 658
    iget-object p0, p0, Lcom/android/systemui/shared/recents/model/Task;->cti2Key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task$TaskKey;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_1
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, "] "

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateIsNeedHideState(Ljava/util/Set;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lmiui/app/MiuiFreeFormManager$MiuiFreeFormStackInfo;",
            ">;Z)V"
        }
    .end annotation

    .line 703
    iget-object v0, p0, Lcom/android/systemui/shared/recents/model/Task;->key:Lcom/android/systemui/shared/recents/model/Task$TaskKey;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->getBaseComponent()Landroid/content/ComponentName;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 707
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/Task;->setNeedHide(Z)V

    .line 708
    invoke-virtual {p0, p1}, Lcom/android/systemui/shared/recents/model/Task;->isInSmallWindow(Ljava/util/Set;)Z

    move-result p1

    .line 709
    invoke-virtual {p0, p2}, Lcom/android/systemui/shared/recents/model/Task;->isSoscSplitModeNotSupportSplit(Z)Z

    move-result p2

    if-nez p1, :cond_1

    if-eqz p2, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 710
    :cond_2
    invoke-virtual {p0, v0}, Lcom/android/systemui/shared/recents/model/Task;->setNeedHide(Z)V

    return-void

    :cond_3
    :goto_0
    const-string p0, "Task"

    const-string/jumbo p1, "updateIsNeedHideState: key or getBaseComponent is null, return."

    .line 704
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public useMultipleThumbnail()Z
    .locals 0

    .line 537
    invoke-virtual {p0}, Lcom/android/systemui/shared/recents/model/Task;->hasMultipleTasks()Z

    move-result p0

    if-eqz p0, :cond_0

    sget-boolean p0, Lcom/miui/launcher/utils/SdkVersion;->ATLEAST_T:Z

    if-eqz p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
