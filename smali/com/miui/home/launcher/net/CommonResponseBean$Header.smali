.class public Lcom/miui/home/launcher/net/CommonResponseBean$Header;
.super Ljava/lang/Object;
.source "CommonResponseBean.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/miui/home/launcher/net/CommonResponseBean;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Header"
.end annotation


# instance fields
.field public apiVersion:Ljava/lang/String;
    .annotation runtime Lcom/mi/google/gson/annotations/SerializedName;
        value = "version"
    .end annotation
.end field

.field public message:Ljava/lang/String;
    .annotation runtime Lcom/mi/google/gson/annotations/SerializedName;
        value = "msg"
    .end annotation
.end field

.field public resultCode:I
    .annotation runtime Lcom/mi/google/gson/annotations/SerializedName;
        value = "code"
    .end annotation
.end field

.field public serverName:Ljava/lang/String;
    .annotation runtime Lcom/mi/google/gson/annotations/SerializedName;
        value = "server"
    .end annotation
.end field

.field public status:I
    .annotation runtime Lcom/mi/google/gson/annotations/SerializedName;
        value = "status"
    .end annotation
.end field

.field public time:J
    .annotation runtime Lcom/mi/google/gson/annotations/SerializedName;
        value = "time"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
