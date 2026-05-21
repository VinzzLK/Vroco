.class public final Lcom/miui/home/launcher/bigicon/BigShortcutIcon;
.super Lcom/miui/home/launcher/ShortcutIcon;
.source "BigShortcutIcon.kt"

# interfaces
.implements Lcom/miui/launcher/sosc/interfaces/SoscingView;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBigShortcutIcon.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BigShortcutIcon.kt\ncom/miui/home/launcher/bigicon/BigShortcutIcon\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,141:1\n1#2:142\n*E\n"
.end annotation


# instance fields
.field public _$_findViewCache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mInfo:Lcom/miui/home/launcher/ShortcutInfo;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 19
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->_$_findViewCache:Ljava/util/Map;

    invoke-direct {p0, p1, p2}, Lcom/miui/home/launcher/ShortcutIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method private final drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;
    .locals 4

    .line 77
    iget v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    .line 78
    iget p0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    .line 79
    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 80
    invoke-static {v0, p0, v1}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 81
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    const/4 v3, 0x0

    .line 82
    invoke-virtual {p1, v3, v3, v0, p0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 83
    invoke-virtual {p1, v2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-object v1
.end method

.method private final updateInfo(Ljava/lang/Object;)V
    .locals 0

    .line 31
    check-cast p1, Lcom/miui/home/launcher/ShortcutInfo;

    iput-object p1, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    .line 32
    invoke-virtual {p0}, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->updateIconDrawableSize()V

    return-void
.end method


# virtual methods
.method public acceptDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    const-string p0, "dragObject"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method public bridge synthetic getHeightDiffBetweenImageAndImageView()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getHeightDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method public getIconRadius()F
    .locals 2

    .line 56
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAboveLevel2()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->getSpanX()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->getSpanY()I

    move-result v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 59
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const v0, 0x7f07029a

    invoke-virtual {p0, v0}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p0

    goto :goto_1

    .line 57
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result p0

    :goto_1
    return p0
.end method

.method public getIconTransparentEdge()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public final getItemInfoFromTag()Lcom/miui/home/launcher/ItemInfo;
    .locals 0

    .line 92
    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez p0, :cond_0

    const-string p0, "mInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    return-object p0
.end method

.method public bridge synthetic getScreenId()J
    .locals 2

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getScreenId()J

    move-result-wide v0

    return-wide v0
.end method

.method protected getSpanX()I
    .locals 0

    .line 36
    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez p0, :cond_0

    const-string p0, "mInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    return p0
.end method

.method protected getSpanY()I
    .locals 0

    .line 40
    iget-object p0, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez p0, :cond_0

    const-string p0, "mInfo"

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    const/4 p0, 0x0

    :cond_0
    iget p0, p0, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    return p0
.end method

.method public bridge synthetic getViewCellX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewCellY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewCellY()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanX()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanX()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getViewSpanY()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/IItemInfo;->getViewSpanY()I

    move-result p0

    return p0
.end method

.method public bridge synthetic getWidthDiffBetweenImageAndImageView()I
    .locals 0

    invoke-super {p0}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->getWidthDiffBetweenImageAndImageView()I

    move-result p0

    return p0
.end method

.method public isBigIcon()Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method

.method public isCanChecked()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public isCrop()Z
    .locals 2

    .line 48
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/miui/home/launcher/ShortcutInfo;

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object p0

    const-string v0, "null cannot be cast to non-null type com.miui.home.launcher.ShortcutInfo"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/miui/home/launcher/ShortcutInfo;

    .line 50
    iget p0, p0, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->mEnableIconMask:I

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method public isShownCheckBox()Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onDrop(Lcom/miui/home/launcher/DragObject;)Z
    .locals 0

    const-string p0, "dragObject"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p0, 0x0

    return p0
.end method

.method protected onFinishInflate()V
    .locals 0

    .line 22
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->onFinishInflate()V

    return-void
.end method

.method public onInterceptSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)Z
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public onSoscEvent(Lcom/miui/launcher/sosc/module/SoscEvent;Lcom/miui/launcher/sosc/module/SoscEvent;)V
    .locals 0

    .line 131
    invoke-virtual {p0}, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->updateSizeOnIconSizeChanged()V

    return-void
.end method

.method public roundedIcon(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 64
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mTransparentDrawable:Landroid/graphics/drawable/Drawable;

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p1

    .line 65
    :cond_0
    invoke-static {}, Lcom/miui/home/launcher/common/Utilities;->isAboveLevel2()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->getSpanX()I

    move-result v0

    invoke-virtual {p0}, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->getSpanY()I

    move-result v1

    if-ne v0, v1, :cond_1

    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07029a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    goto :goto_1

    .line 65
    :cond_2
    :goto_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/miui/home/launcher/widget/RoundedCornerEnforcement;->computeEnforcedRadius(Landroid/content/Context;)F

    move-result v0

    .line 67
    :goto_1
    instance-of v1, p1, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 68
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 69
    check-cast p1, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->getBackDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-direct {p0, v3}, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 68
    :cond_3
    invoke-static {v1, v2}, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p0

    .line 69
    invoke-virtual {p0, v0}, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    invoke-virtual {p1}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;->getBadgeDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 68
    new-instance v0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    invoke-direct {v0, p0, p1}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v0

    .line 71
    :cond_4
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    if-eqz p1, :cond_5

    .line 72
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->drawableToBitmap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 71
    :cond_5
    invoke-static {v1, v2}, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable;

    move-result-object p0

    .line 72
    invoke-virtual {p0, v0}, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    return-object p0
.end method

.method public bridge synthetic setAnimTargetAlpha(F)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/anim/LaunchAppAndBackHomeAnimTarget;->setAnimTargetAlpha(F)V

    return-void
.end method

.method public bridge synthetic setTag(Lcom/miui/home/launcher/ItemInfo;)V
    .locals 0

    invoke-super {p0, p1}, Lcom/miui/home/launcher/IShortcutIcon;->setTag(Lcom/miui/home/launcher/ItemInfo;)V

    return-void
.end method

.method public setTag(Ljava/lang/Object;)V
    .locals 1

    const-string/jumbo v0, "tag"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    invoke-super {p0, p1}, Landroid/widget/TextView;->setTag(Ljava/lang/Object;)V

    .line 27
    invoke-direct {p0, p1}, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->updateInfo(Ljava/lang/Object;)V

    return-void
.end method

.method protected updateIconDrawableSize()V
    .locals 4

    .line 115
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    const-string v2, "mInfo"

    if-nez v0, :cond_1

    .line 118
    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v1

    :cond_1
    iget v0, v0, Lcom/miui/home/launcher/ItemInfo;->spanX:I

    iget-object v3, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v3, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    move-object v1, v3

    :goto_0
    iget v1, v1, Lcom/miui/home/launcher/ItemInfo;->spanY:I

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetSizeSpec(IIZ)J

    move-result-wide v0

    const/16 v2, 0x20

    shr-long v2, v0, v2

    long-to-int v2, v2

    long-to-int v0, v0

    .line 120
    invoke-static {}, Lcom/miui/home/launcher/DeviceConfig;->getMiuiWidgetPaddingTop()I

    move-result v1

    sub-int/2addr v0, v1

    .line 121
    iget v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    if-ne v1, v2, :cond_3

    iget v1, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    if-eq v1, v0, :cond_4

    .line 122
    :cond_3
    iput v2, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconWidth:I

    .line 123
    iput v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mLauncherIconHeight:I

    .line 124
    iget-object v0, p0, Lcom/miui/home/launcher/ShortcutIcon;->mIconDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    .line 125
    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/ShortcutIcon;->applyCompoundDrawables(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    return-void
.end method

.method public updateSizeOnIconSizeChanged()V
    .locals 5

    .line 107
    invoke-static {}, Lcom/miui/home/launcher/Application;->getInstance()Lcom/miui/home/launcher/Application;

    move-result-object v0

    invoke-virtual {v0}, Lcom/miui/home/launcher/Application;->getIconCache()Lcom/miui/home/launcher/IconCache;

    move-result-object v0

    .line 108
    iget-object v1, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    const-string v2, "mInfo"

    const/4 v3, 0x0

    if-nez v1, :cond_0

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v1, v3

    :cond_0
    invoke-virtual {v1}, Lcom/miui/home/launcher/ShortcutInfo;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v4, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v4, :cond_1

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v4, v3

    :cond_1
    iget-object v4, v4, Lcom/miui/home/launcher/ItemInfo;->user:Landroid/os/UserHandle;

    invoke-virtual {v0, v1, v3, v4}, Lcom/miui/home/launcher/IconCache;->removeBigIcons(Ljava/lang/String;Ljava/lang/String;Landroid/os/UserHandle;)V

    .line 109
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_2

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    move-object v0, v3

    :cond_2
    invoke-virtual {v0, v3}, Lcom/miui/home/launcher/ItemInfoWithIconAndMessage;->setIconDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 110
    iget-object v0, p0, Lcom/miui/home/launcher/bigicon/BigShortcutIcon;->mInfo:Lcom/miui/home/launcher/ShortcutInfo;

    if-nez v0, :cond_3

    invoke-static {v2}, Lkotlin/jvm/internal/Intrinsics;->throwUninitializedPropertyAccessException(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    move-object v3, v0

    :goto_0
    invoke-static {}, Lcom/miui/home/launcher/Application;->getLauncher()Lcom/miui/home/launcher/Launcher;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/miui/home/launcher/ShortcutInfo;->updateBuddyIconView(Lcom/miui/home/launcher/Launcher;)V

    .line 111
    invoke-super {p0}, Lcom/miui/home/launcher/ShortcutIcon;->updateSizeOnIconSizeChanged()V

    return-void
.end method
