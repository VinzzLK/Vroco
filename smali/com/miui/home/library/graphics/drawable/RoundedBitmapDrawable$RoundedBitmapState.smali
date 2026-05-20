.class final Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable$RoundedBitmapState;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "RoundedBitmapDrawable.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RoundedBitmapState"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mCornerRadius:F

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;F)V
    .locals 0

    .line 409
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 410
    iput-object p1, p0, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable$RoundedBitmapState;->mResources:Landroid/content/res/Resources;

    .line 411
    iput-object p2, p0, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable$RoundedBitmapState;->mBitmap:Landroid/graphics/Bitmap;

    .line 412
    iput p3, p0, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable$RoundedBitmapState;->mCornerRadius:F

    return-void
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 418
    iget-object v0, p0, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable$RoundedBitmapState;->mResources:Landroid/content/res/Resources;

    iget-object v1, p0, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable$RoundedBitmapState;->mBitmap:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawableFactory;->create(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable;

    move-result-object v0

    .line 419
    iget p0, p0, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable$RoundedBitmapState;->mCornerRadius:F

    invoke-virtual {v0, p0}, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable;->setCornerRadius(F)V

    return-object v0
.end method

.method public setCornerRadius(F)V
    .locals 0

    .line 406
    iput p1, p0, Lcom/miui/home/library/graphics/drawable/RoundedBitmapDrawable$RoundedBitmapState;->mCornerRadius:F

    return-void
.end method
