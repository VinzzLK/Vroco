.class public Lcom/miui/maml/elements/filament/UniformFactory$FloatUniform;
.super Lcom/miui/maml/elements/filament/UniformFactory$Uniform;
.source "UniformFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/filament/UniformFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FloatUniform"
.end annotation


# static fields
.field public static final TYPE:Ljava/lang/String; = "float"


# direct methods
.method public constructor <init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V
    .locals 0

    .line 199
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;-><init>(Lorg/w3c/dom/Element;Lcom/miui/maml/data/Variables;Landroid/content/Context;I)V

    return-void
.end method


# virtual methods
.method protected doRefresh()V
    .locals 13

    .line 205
    :try_start_0
    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mParams:[Lcom/miui/maml/data/Expression;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v1, v3, :cond_3

    const/4 v4, 0x2

    if-eq v1, v4, :cond_2

    const/4 v5, 0x3

    if-eq v1, v5, :cond_1

    const/4 v6, 0x4

    if-eq v1, v6, :cond_0

    goto/16 :goto_0

    .line 221
    :cond_0
    iget-object v7, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v8, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mName:Ljava/lang/String;

    aget-object v0, v0, v2

    .line 222
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v9, v0

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v3

    .line 223
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v10, v0

    iget-object v0, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v0, v0, v4

    .line 224
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v11, v0

    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object p0, p0, v5

    .line 225
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v0

    double-to-float v12, v0

    .line 221
    invoke-virtual/range {v7 .. v12}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;FFFF)V

    goto :goto_0

    .line 215
    :cond_1
    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v5, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mName:Ljava/lang/String;

    aget-object v0, v0, v2

    .line 216
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v6

    double-to-float v0, v6

    iget-object v2, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object v2, v2, v3

    .line 217
    invoke-virtual {v2}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v2, v2

    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object p0, p0, v4

    .line 218
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v3

    double-to-float p0, v3

    .line 215
    invoke-virtual {v1, v5, v0, v2, p0}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;FFF)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object v4, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mName:Ljava/lang/String;

    aget-object v0, v0, v2

    .line 211
    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v5

    double-to-float v0, v5

    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mParams:[Lcom/miui/maml/data/Expression;

    aget-object p0, p0, v3

    .line 212
    invoke-virtual {p0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float p0, v2

    .line 210
    invoke-virtual {v1, v4, v0, p0}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;FF)V

    goto :goto_0

    .line 207
    :cond_3
    iget-object v1, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mMaterial:Lcom/google/android/filament/MaterialInstance;

    iget-object p0, p0, Lcom/miui/maml/elements/filament/UniformFactory$Uniform;->mName:Ljava/lang/String;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Lcom/miui/maml/data/Expression;->evaluate()D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {v1, p0, v0}, Lcom/google/android/filament/MaterialInstance;->setParameter(Ljava/lang/String;F)V
    :try_end_0
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 231
    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method protected doUpdateParams()V
    .locals 0

    return-void
.end method
