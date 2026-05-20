.class public final Lcom/miui/home/launcher/defaultlayout/GoogleOriginalSearchNode;
.super Lcom/miui/home/launcher/defaultlayout/ItemNode;
.source "GoogleOriginalSearchNode.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 4

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-super {p0, p1}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    .line 14
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/Node;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 15
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/Node;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v3, 0x13

    invoke-virtual {v1, v3, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    .line 17
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->getMValues()Landroid/content/ContentValues;

    move-result-object v2

    invoke-static {v2, v0, v1}, Lcom/miui/home/launcher/install/DefaultLayoutHelper;->addGoogleOriginalSearchWidget(Landroid/content/ContentValues;II)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMContentValuesList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/Node;->parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    return-void
.end method
