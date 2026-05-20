.class public final Lcom/miui/home/launcher/defaultlayout/OldMamlNode;
.super Lcom/miui/home/launcher/defaultlayout/ItemNode;
.source "OldMamlNode.kt"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 10
    invoke-direct {p0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;-><init>()V

    return-void
.end method


# virtual methods
.method public parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-super {p0, p1}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->parse(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    .line 14
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getCurrentTypedArray()Landroid/content/res/TypedArray;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/miui/home/launcher/defaultlayout/Node;->setMTypedArray(Landroid/content/res/TypedArray;)V

    .line 16
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/ItemNode;->getMValues()Landroid/content/ContentValues;

    move-result-object v0

    .line 17
    invoke-virtual {p0}, Lcom/miui/home/launcher/defaultlayout/Node;->getMTypedArray()Landroid/content/res/TypedArray;

    move-result-object v1

    invoke-static {v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    const/16 v2, 0x16

    invoke-virtual {v1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 15
    invoke-static {v0, v1}, Lcom/miui/home/launcher/install/DefaultLayoutHelper;->addMtzGadget(Landroid/content/ContentValues;Ljava/lang/String;)Landroid/content/ContentValues;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 20
    invoke-virtual {p1}, Lcom/miui/home/launcher/defaultlayout/DefaultContext;->getMContentValuesList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 22
    :cond_0
    invoke-virtual {p0, p1}, Lcom/miui/home/launcher/defaultlayout/Node;->parseNext(Lcom/miui/home/launcher/defaultlayout/DefaultContext;)V

    return-void
.end method
