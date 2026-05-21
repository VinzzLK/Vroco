.class public Lmiuix/util/Log$Facade$PrintLogRunnable;
.super Lmiuix/internal/log/message/AbstractMessage;
.source "Log.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/util/Log$Facade;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "PrintLogRunnable"
.end annotation


# instance fields
.field private mLevel:Lmiuix/internal/log/Level;

.field private mLogger:Lmiuix/internal/log/Logger;

.field private mMessage:Lmiuix/internal/log/message/Message;

.field private mTag:Ljava/lang/String;

.field private mText:Ljava/lang/String;

.field private mThrowable:Ljava/lang/Throwable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 782
    invoke-direct {p0}, Lmiuix/internal/log/message/AbstractMessage;-><init>()V

    return-void
.end method

.method public static obtain()Lmiuix/util/Log$Facade$PrintLogRunnable;
    .locals 1

    .line 792
    const-class v0, Lmiuix/util/Log$Facade$PrintLogRunnable;

    invoke-static {v0}, Lmiuix/internal/log/message/MessageFactory;->obtain(Ljava/lang/Class;)Lmiuix/internal/log/message/Message;

    move-result-object v0

    check-cast v0, Lmiuix/util/Log$Facade$PrintLogRunnable;

    return-object v0
.end method


# virtual methods
.method public format(Ljava/lang/Appendable;)V
    .locals 0

    return-void
.end method

.method public getThrowable()Ljava/lang/Throwable;
    .locals 0

    const/4 p0, 0x0

    return-object p0
.end method

.method protected onRecycle()V
    .locals 2

    const/4 v0, 0x0

    .line 820
    iput-object v0, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mLogger:Lmiuix/internal/log/Logger;

    .line 821
    iput-object v0, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mLevel:Lmiuix/internal/log/Level;

    .line 822
    iput-object v0, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mTag:Ljava/lang/String;

    .line 823
    iput-object v0, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mText:Ljava/lang/String;

    .line 824
    iput-object v0, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mThrowable:Ljava/lang/Throwable;

    .line 825
    iget-object v1, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mMessage:Lmiuix/internal/log/message/Message;

    if-eqz v1, :cond_0

    .line 826
    invoke-interface {v1}, Lmiuix/internal/log/message/Message;->recycle()V

    .line 827
    iput-object v0, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mMessage:Lmiuix/internal/log/message/Message;

    :cond_0
    return-void
.end method

.method public run()V
    .locals 5

    .line 806
    iget-object v0, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mLogger:Lmiuix/internal/log/Logger;

    if-nez v0, :cond_0

    const-string v0, "LogcatFacade"

    const-string v1, "mLogger is null"

    .line 807
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 809
    :cond_0
    iget-object v1, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mMessage:Lmiuix/internal/log/message/Message;

    if-nez v1, :cond_1

    .line 810
    iget-object v1, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mLevel:Lmiuix/internal/log/Level;

    iget-object v2, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mTag:Ljava/lang/String;

    iget-object v3, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mText:Ljava/lang/String;

    iget-object v4, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mThrowable:Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v2, v3, v4}, Lmiuix/internal/log/Logger;->log(Lmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 812
    :cond_1
    iget-object v2, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mLevel:Lmiuix/internal/log/Level;

    iget-object v3, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v2, v3, v1}, Lmiuix/internal/log/Logger;->log(Lmiuix/internal/log/Level;Ljava/lang/String;Lmiuix/internal/log/message/Message;)V

    .line 815
    :goto_0
    invoke-virtual {p0}, Lmiuix/internal/log/message/AbstractMessage;->recycle()V

    return-void
.end method

.method setLogInfo(Lmiuix/internal/log/Logger;Lmiuix/internal/log/Level;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;Lmiuix/internal/log/message/Message;)V
    .locals 0

    .line 796
    iput-object p1, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mLogger:Lmiuix/internal/log/Logger;

    .line 797
    iput-object p2, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mLevel:Lmiuix/internal/log/Level;

    .line 798
    iput-object p3, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mTag:Ljava/lang/String;

    .line 799
    iput-object p4, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mText:Ljava/lang/String;

    .line 800
    iput-object p5, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mThrowable:Ljava/lang/Throwable;

    .line 801
    iput-object p6, p0, Lmiuix/util/Log$Facade$PrintLogRunnable;->mMessage:Lmiuix/internal/log/message/Message;

    return-void
.end method
