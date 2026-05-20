.class Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "LayerAdaptiveIconDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LayerState"
.end annotation


# instance fields
.field private final mBackground:Landroid/graphics/drawable/Drawable;

.field private final mBadge:Landroid/graphics/drawable/Drawable;

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private final mComponentName:Landroid/content/ComponentName;

.field private final mForeground:Landroid/graphics/drawable/Drawable;


# direct methods
.method private constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V
    .locals 0

    .line 794
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 795
    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 796
    iput-object p2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->mForeground:Landroid/graphics/drawable/Drawable;

    .line 797
    iput-object p3, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->mBadge:Landroid/graphics/drawable/Drawable;

    .line 798
    iput-object p4, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->mComponentName:Landroid/content/ComponentName;

    return-void
.end method

.method synthetic constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$1;)V
    .locals 0

    .line 787
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V

    return-void
.end method

.method private newChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p1, :cond_0

    .line 813
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 814
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 5

    .line 804
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->newChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 805
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->mForeground:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->newChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 806
    iget-object v2, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->newChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 807
    new-instance v3, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;

    iget-object v4, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->mComponentName:Landroid/content/ComponentName;

    invoke-direct {v3, v0, v1, v2, v4}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/content/ComponentName;)V

    .line 808
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->mColorFilter:Landroid/graphics/ColorFilter;

    invoke-virtual {v3, p0}, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable;->setColorFilter(Landroid/graphics/ColorFilter;)V

    return-object v3
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 0

    .line 820
    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/LayerAdaptiveIconDrawable$LayerState;->mColorFilter:Landroid/graphics/ColorFilter;

    return-void
.end method
