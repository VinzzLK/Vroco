.class public Lcom/miui/home/launcher/common/messages/FirstScreenLoadFinishedMessageHandler;
.super Ljava/lang/Object;
.source "FirstScreenLoadFinishedMessageHandler.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected onFirstScreenLoadFinished()V
    .locals 0

    return-void
.end method

.method public onMessageEvent(Lcom/miui/home/launcher/common/messages/FirstScreenLoadFinishedMessage;)V
    .locals 0
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .line 12
    invoke-virtual {p0}, Lcom/miui/home/launcher/common/messages/FirstScreenLoadFinishedMessageHandler;->onFirstScreenLoadFinished()V

    return-void
.end method
