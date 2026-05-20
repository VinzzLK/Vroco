.class Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$2;
.super Ljava/lang/Object;
.source "BaseAlphabeticalAppsList.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->startForbiddenUpdate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;


# direct methods
.method constructor <init>(Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$2;->this$0:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$2;->this$0:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;

    invoke-virtual {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->stopForbiddenUpdate()V

    .line 291
    invoke-static {}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->access$000()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 292
    invoke-static {v0}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->access$002(Z)Z

    .line 293
    iget-object p0, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList$2;->this$0:Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;

    const/4 v0, 0x1

    iget-object v1, p0, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->mApps:Ljava/util/List;

    invoke-virtual {p0, v0, v1}, Lcom/miui/home/launcher/allapps/BaseAlphabeticalAppsList;->onAppsUpdated(ILjava/util/List;)V

    :cond_0
    return-void
.end method
