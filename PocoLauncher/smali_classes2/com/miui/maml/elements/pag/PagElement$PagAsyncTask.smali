.class Lcom/miui/maml/elements/pag/PagElement$PagAsyncTask;
.super Landroid/os/AsyncTask;
.source "PagElement.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/maml/elements/pag/PagElement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PagAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/miui/maml/elements/pag/PagElement;


# direct methods
.method constructor <init>(Lcom/miui/maml/elements/pag/PagElement;)V
    .locals 0

    .line 335
    iput-object p1, p0, Lcom/miui/maml/elements/pag/PagElement$PagAsyncTask;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 335
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/pag/PagElement$PagAsyncTask;->doInBackground([Ljava/lang/Void;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/String;
    .locals 6

    const-string p1, "PagElement"

    .line 339
    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 340
    iget-object v2, p0, Lcom/miui/maml/elements/pag/PagElement$PagAsyncTask;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    invoke-virtual {v2}, Lcom/miui/maml/elements/ScreenElement;->getContext()Lcom/miui/maml/ScreenContext;

    move-result-object v2

    iget-object v2, v2, Lcom/miui/maml/ScreenContext;->mResourceManager:Lcom/miui/maml/ResourceManager;

    iget-object v3, p0, Lcom/miui/maml/elements/pag/PagElement$PagAsyncTask;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    invoke-static {v3}, Lcom/miui/maml/elements/pag/PagElement;->access$100(Lcom/miui/maml/elements/pag/PagElement;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/miui/maml/ResourceManager;->getInputStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    .line 341
    invoke-static {v2}, Lmiuix/core/util/IOUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v2

    .line 342
    iget-object v3, p0, Lcom/miui/maml/elements/pag/PagElement$PagAsyncTask;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    invoke-static {v2}, Lorg/libpag/PAGFile;->Load([B)Lorg/libpag/PAGFile;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/miui/maml/elements/pag/PagElement;->access$202(Lcom/miui/maml/elements/pag/PagElement;Lorg/libpag/PAGFile;)Lorg/libpag/PAGFile;

    .line 343
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "file size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    array-length v2, v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " loading timed "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 344
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    sub-long/2addr v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " path: "

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement$PagAsyncTask;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    invoke-static {p0}, Lcom/miui/maml/elements/pag/PagElement;->access$100(Lcom/miui/maml/elements/pag/PagElement;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 343
    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 346
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "READ ERROR: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Lcom/miui/maml/util/MamlLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    const/4 p0, 0x0

    return-object p0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 335
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/miui/maml/elements/pag/PagElement$PagAsyncTask;->onPostExecute(Ljava/lang/String;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/String;)V
    .locals 1

    .line 353
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 354
    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagElement$PagAsyncTask;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    invoke-static {p1}, Lcom/miui/maml/elements/pag/PagElement;->access$200(Lcom/miui/maml/elements/pag/PagElement;)Lorg/libpag/PAGFile;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 355
    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagElement$PagAsyncTask;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    invoke-static {p1}, Lcom/miui/maml/elements/pag/PagElement;->access$300(Lcom/miui/maml/elements/pag/PagElement;)Lorg/libpag/PAGView;

    move-result-object p1

    iget-object v0, p0, Lcom/miui/maml/elements/pag/PagElement$PagAsyncTask;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    invoke-static {v0}, Lcom/miui/maml/elements/pag/PagElement;->access$200(Lcom/miui/maml/elements/pag/PagElement;)Lorg/libpag/PAGFile;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/libpag/PAGView;->setComposition(Lorg/libpag/PAGComposition;)V

    .line 356
    iget-object p1, p0, Lcom/miui/maml/elements/pag/PagElement$PagAsyncTask;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    invoke-static {p1}, Lcom/miui/maml/elements/pag/PagElement;->access$400(Lcom/miui/maml/elements/pag/PagElement;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 357
    iget-object p0, p0, Lcom/miui/maml/elements/pag/PagElement$PagAsyncTask;->this$0:Lcom/miui/maml/elements/pag/PagElement;

    invoke-static {p0}, Lcom/miui/maml/elements/pag/PagElement;->access$300(Lcom/miui/maml/elements/pag/PagElement;)Lorg/libpag/PAGView;

    move-result-object p0

    invoke-virtual {p0}, Lorg/libpag/PAGView;->play()V

    :cond_0
    return-void
.end method
