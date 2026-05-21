.class public final Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable$State;
.super Landroid/graphics/drawable/Drawable$ConstantState;
.source "BadgeDrawable.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "State"
.end annotation


# instance fields
.field private mBack:Landroid/graphics/drawable/Drawable;

.field private mBadge:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0

    .line 60
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable$ConstantState;-><init>()V

    .line 65
    iput-object p1, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable$State;->mBack:Landroid/graphics/drawable/Drawable;

    .line 66
    iput-object p2, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable$State;->mBadge:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method private final newChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;
    .locals 0

    if-eqz p1, :cond_0

    .line 70
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    if-eqz p0, :cond_0

    .line 71
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method


# virtual methods
.method public getChangingConfigurations()I
    .locals 0

    const/4 p0, 0x0

    return p0
.end method

.method public newDrawable()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 76
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable$State;->mBack:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v0}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable$State;->newChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 77
    iget-object v1, p0, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable$State;->mBadge:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v1}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable$State;->newChildDrawable(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    .line 79
    new-instance v1, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;

    invoke-direct {v1, v0, p0}, Lcom/miui/home/launcher/graphics/drawable/BadgeDrawable;-><init>(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-object v1
.end method
