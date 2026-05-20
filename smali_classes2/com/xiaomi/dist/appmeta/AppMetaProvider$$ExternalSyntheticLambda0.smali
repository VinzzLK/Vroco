.class public final synthetic Lcom/xiaomi/dist/appmeta/AppMetaProvider$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "R8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Supplier;


# instance fields
.field public final synthetic f$0:Landroid/content/Context;

.field public final synthetic f$1:Landroid/os/Bundle;

.field public final synthetic f$2:I


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Landroid/os/Bundle;I)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaomi/dist/appmeta/AppMetaProvider$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/xiaomi/dist/appmeta/AppMetaProvider$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iput p3, p0, Lcom/xiaomi/dist/appmeta/AppMetaProvider$$ExternalSyntheticLambda0;->f$2:I

    return-void
.end method


# virtual methods
.method public final get()Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Lcom/xiaomi/dist/appmeta/AppMetaProvider$$ExternalSyntheticLambda0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaomi/dist/appmeta/AppMetaProvider$$ExternalSyntheticLambda0;->f$1:Landroid/os/Bundle;

    iget p0, p0, Lcom/xiaomi/dist/appmeta/AppMetaProvider$$ExternalSyntheticLambda0;->f$2:I

    invoke-static {v0, v1, p0}, Lcom/xiaomi/dist/appmeta/AppMetaProvider;->$r8$lambda$pQEC93NYyUlMh6xK5anmFhqsug8(Landroid/content/Context;Landroid/os/Bundle;I)Lcom/xiaomi/dist/handoff/AppMeta;

    move-result-object p0

    return-object p0
.end method
