.class public final synthetic Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

.field public final synthetic f$1:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$$ExternalSyntheticLambda0;->f$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    iput-object p2, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$$ExternalSyntheticLambda0;->f$0:Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;

    iget-object p0, p0, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider$$ExternalSyntheticLambda0;->f$1:Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;->$r8$lambda$tU3us6_AElDm-Cr6IrTf6siT2JM(Lcom/miui/maml/elements/BitmapProvider$ResourceImageProvider;Ljava/lang/String;)Lcom/miui/maml/ResourceManager$BitmapInfo;

    move-result-object p0

    return-object p0
.end method
