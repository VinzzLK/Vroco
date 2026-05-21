.class public Lcom/miui/home/launcher/graphics/BigDrawableCache;
.super Ljava/lang/Object;
.source "BigDrawableCache.java"


# instance fields
.field private mCache:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            "Lcom/miui/home/launcher/graphics/DrawableInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 14
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/home/launcher/graphics/BigDrawableCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 52
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/BigDrawableCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    return-void
.end method

.method public get(Lcom/miui/home/launcher/util/ComponentKey;)Lcom/miui/home/launcher/graphics/DrawableInfo;
    .locals 2

    .line 29
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/BigDrawableCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/miui/home/launcher/graphics/DrawableInfo;

    const/4 p1, 0x0

    if-eqz p0, :cond_1

    .line 30
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_1

    .line 31
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 32
    iget-object p1, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object p1

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable$ConstantState;->newDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iget p0, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->enableIconMask:I

    invoke-static {p1, p0}, Lcom/miui/home/launcher/graphics/DrawableInfo;->fromDrawableInfo(Landroid/graphics/drawable/Drawable;I)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p0

    return-object p0

    :cond_0
    return-object p1

    :cond_1
    if-eqz p0, :cond_2

    .line 37
    iget-object v0, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    .line 38
    iget p0, p0, Lcom/miui/home/launcher/graphics/DrawableInfo;->enableIconMask:I

    invoke-static {v0, p0}, Lcom/miui/home/launcher/graphics/DrawableInfo;->fromDrawableInfo(Landroid/graphics/drawable/Drawable;I)Lcom/miui/home/launcher/graphics/DrawableInfo;

    move-result-object p0

    return-object p0

    :cond_2
    return-object p1
.end method

.method public keySet()Ljava/util/Set;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/miui/home/launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation

    .line 48
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/BigDrawableCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0}, Ljava/util/concurrent/ConcurrentHashMap;->keySet()Ljava/util/Set;

    move-result-object p0

    return-object p0
.end method

.method public put(Lcom/miui/home/launcher/util/ComponentKey;Lcom/miui/home/launcher/graphics/DrawableInfo;)V
    .locals 2

    .line 18
    iget-object v0, p2, Lcom/miui/home/launcher/graphics/DrawableInfo;->icon:Landroid/graphics/drawable/Drawable;

    instance-of v1, v0, Landroid/graphics/drawable/BitmapDrawable;

    if-eqz v1, :cond_0

    .line 19
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 25
    :cond_0
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/BigDrawableCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public remove(Lcom/miui/home/launcher/util/ComponentKey;)V
    .locals 0

    .line 44
    iget-object p0, p0, Lcom/miui/home/launcher/graphics/BigDrawableCache;->mCache:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
