.class public Lcom/miui/home/launcher/common/messages/ShortcutMenuDisplayMessage;
.super Ljava/lang/Object;
.source "ShortcutMenuDisplayMessage.java"


# instance fields
.field private final isDrawingBlur:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    iput-boolean p1, p0, Lcom/miui/home/launcher/common/messages/ShortcutMenuDisplayMessage;->isDrawingBlur:Z

    return-void
.end method


# virtual methods
.method public getIsDrawingBlur()Z
    .locals 0

    .line 11
    iget-boolean p0, p0, Lcom/miui/home/launcher/common/messages/ShortcutMenuDisplayMessage;->isDrawingBlur:Z

    return p0
.end method
