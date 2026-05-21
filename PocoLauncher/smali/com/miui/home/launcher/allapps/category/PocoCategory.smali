.class public final Lcom/miui/home/launcher/allapps/category/PocoCategory;
.super Ljava/lang/Object;
.source "PocoCategory.kt"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation


# instance fields
.field private cateId:I

.field private cateName:Ljava/lang/String;

.field private isEnable:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;)V
    .locals 1

    const-string v0, "cateName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    iput p1, p0, Lcom/miui/home/launcher/allapps/category/PocoCategory;->cateId:I

    iput-object p2, p0, Lcom/miui/home/launcher/allapps/category/PocoCategory;->cateName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 14
    instance-of v0, p1, Lcom/miui/home/launcher/allapps/category/PocoCategory;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 16
    iget v0, p0, Lcom/miui/home/launcher/allapps/category/PocoCategory;->cateId:I

    check-cast p1, Lcom/miui/home/launcher/allapps/category/PocoCategory;

    iget v2, p1, Lcom/miui/home/launcher/allapps/category/PocoCategory;->cateId:I

    if-ne v0, v2, :cond_0

    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/PocoCategory;->cateName:Ljava/lang/String;

    iget-object p1, p1, Lcom/miui/home/launcher/allapps/category/PocoCategory;->cateName:Ljava/lang/String;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public final getCateId()I
    .locals 0

    .line 11
    iget p0, p0, Lcom/miui/home/launcher/allapps/category/PocoCategory;->cateId:I

    return p0
.end method

.method public final getCateName()Ljava/lang/String;
    .locals 0

    .line 11
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/category/PocoCategory;->cateName:Ljava/lang/String;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 23
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/category/PocoCategory;->cateName:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/16 v1, 0x26c

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 24
    iget p0, p0, Lcom/miui/home/launcher/allapps/category/PocoCategory;->cateId:I

    add-int/2addr v1, p0

    return v1
.end method

.method public final isEnable()Z
    .locals 0

    .line 12
    iget-boolean p0, p0, Lcom/miui/home/launcher/allapps/category/PocoCategory;->isEnable:Z

    return p0
.end method

.method public final setCateId(I)V
    .locals 0

    .line 11
    iput p1, p0, Lcom/miui/home/launcher/allapps/category/PocoCategory;->cateId:I

    return-void
.end method

.method public final setCateName(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/category/PocoCategory;->cateName:Ljava/lang/String;

    return-void
.end method

.method public final setEnable(Z)V
    .locals 0

    .line 12
    iput-boolean p1, p0, Lcom/miui/home/launcher/allapps/category/PocoCategory;->isEnable:Z

    return-void
.end method
