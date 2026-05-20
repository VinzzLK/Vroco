.class Lmiuix/internal/widget/ListPopup$ContentSize;
.super Ljava/lang/Object;
.source "ListPopup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/internal/widget/ListPopup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ContentSize"
.end annotation


# instance fields
.field mHasContentWidth:Z

.field mHeight:I

.field mWidth:I


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1000
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lmiuix/internal/widget/ListPopup$1;)V
    .locals 0

    .line 1000
    invoke-direct {p0}, Lmiuix/internal/widget/ListPopup$ContentSize;-><init>()V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 1016
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ContentSize{ w= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " h= "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHeight:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p0, " }"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public updateWidth(I)V
    .locals 0

    .line 1009
    iput p1, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mWidth:I

    const/4 p1, 0x1

    .line 1010
    iput-boolean p1, p0, Lmiuix/internal/widget/ListPopup$ContentSize;->mHasContentWidth:Z

    return-void
.end method
