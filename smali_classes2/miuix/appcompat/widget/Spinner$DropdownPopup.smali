.class Lmiuix/appcompat/widget/Spinner$DropdownPopup;
.super Lmiuix/popupwidget/widget/PopupWindow;
.source "Spinner.java"

# interfaces
.implements Lmiuix/appcompat/widget/Spinner$SpinnerPopup;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmiuix/appcompat/widget/Spinner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DropdownPopup"
.end annotation


# instance fields
.field mAdapter:Landroid/widget/ListAdapter;

.field private mFenceView:Landroid/view/View;

.field private mHintText:Ljava/lang/CharSequence;

.field private mOriginalHorizontalOffset:I

.field private final mVisibleRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lmiuix/appcompat/widget/Spinner;


# direct methods
.method public constructor <init>(Lmiuix/appcompat/widget/Spinner;Landroid/content/Context;)V
    .locals 3

    .line 1152
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    const/4 v0, 0x0

    .line 1153
    invoke-direct {p0, p2, v0}, Lmiuix/popupwidget/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/view/View;)V

    .line 1148
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mVisibleRect:Landroid/graphics/Rect;

    .line 1155
    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    .line 1156
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    sget v1, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_menu_padding_single_item:I

    invoke-virtual {p2, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    sget v2, Lmiuix/appcompat/R$dimen;->miuix_appcompat_drop_down_item_min_height:I

    .line 1157
    invoke-virtual {p2, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    add-int/2addr v1, p2

    mul-int/lit8 v1, v1, 0x2

    iput v1, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMinHeight:I

    const p2, 0x800053

    .line 1159
    invoke-virtual {p0, p2}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setDropDownGravity(I)V

    .line 1161
    new-instance p2, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;

    invoke-direct {p2, p0, p1}, Lmiuix/appcompat/widget/Spinner$DropdownPopup$1;-><init>(Lmiuix/appcompat/widget/Spinner$DropdownPopup;Lmiuix/appcompat/widget/Spinner;)V

    invoke-virtual {p0, p2}, Lmiuix/popupwidget/widget/PopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    const/4 p1, 0x1

    .line 1172
    iput-boolean p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mIgnoreAnchorVisibility:Z

    return-void
.end method

.method private initListView(II)V
    .locals 2

    .line 1317
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v0

    const/4 v1, 0x1

    .line 1318
    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setChoiceMode(I)V

    .line 1319
    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setTextDirection(I)V

    .line 1320
    invoke-virtual {v0, p2}, Landroid/widget/ListView;->setTextAlignment(I)V

    .line 1321
    iget-object p0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0}, Landroid/widget/Spinner;->getSelectedItemPosition()I

    move-result p0

    .line 1322
    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setSelection(I)V

    .line 1323
    invoke-virtual {v0, p0, v1}, Landroid/widget/ListView;->setItemChecked(IZ)V

    return-void
.end method

.method private setProperFenceView()V
    .locals 3

    .line 1193
    iget-object v0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceView:Landroid/view/View;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 1198
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    .line 1199
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    instance-of v2, v2, Lmiuix/appcompat/app/IActivity;

    if-eqz v2, :cond_1

    .line 1200
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    check-cast v2, Lmiuix/appcompat/app/IActivity;

    invoke-interface {v2}, Lmiuix/appcompat/app/IActivity;->isInFloatingWindowMode()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1201
    invoke-virtual {v1}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v0

    sget v2, Lmiuix/appcompat/R$id;->action_bar_overlay_layout:I

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setFenceView(Landroid/view/View;)V

    const/4 v0, 0x1

    :cond_1
    if-nez v0, :cond_3

    .line 1206
    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_3

    .line 1208
    instance-of v1, v0, Lmiuix/view/Fence;

    if-eqz v1, :cond_2

    move-object v1, v0

    check-cast v1, Lmiuix/view/Fence;

    invoke-interface {v1}, Lmiuix/view/Fence;->isFenceEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    instance-of v1, v0, Landroid/view/View;

    if-eqz v1, :cond_2

    .line 1209
    check-cast v0, Landroid/view/View;

    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setFenceView(Landroid/view/View;)V

    goto :goto_1

    .line 1212
    :cond_2
    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    goto :goto_0

    :cond_3
    :goto_1
    return-void
.end method

.method private showWithAnchor(Landroid/view/View;)V
    .locals 3

    .line 1219
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-virtual {v0}, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Spinner"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getAnchor()Landroid/view/View;

    move-result-object v0

    if-eq v0, p1, :cond_0

    .line 1221
    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 1223
    :cond_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget-object v0, v0, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mAnchorViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->centerX()I

    move-result v0

    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget-object v1, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mDecorViewBounds:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    if-gt v0, v1, :cond_1

    const/16 v0, 0x53

    .line 1225
    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setDropDownGravity(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x55

    .line 1228
    invoke-virtual {p0, v0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setDropDownGravity(I)V

    .line 1230
    :goto_0
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-interface {v0, v1}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getXInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v0

    .line 1231
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-interface {v1, v2}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getYInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v1

    .line 1232
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v2, v2, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 1233
    iget-object v2, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v2, v2, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    invoke-virtual {p0, v2}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 1234
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v2

    if-nez v2, :cond_2

    const/4 v2, 0x0

    .line 1235
    invoke-virtual {p0, p1, v2, v0, v1}, Lmiuix/popupwidget/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    goto :goto_1

    .line 1237
    :cond_2
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/PopupWindow;->getHeight()I

    move-result v2

    invoke-virtual {p0, v0, v1, p1, v2}, Landroid/widget/PopupWindow;->update(IIII)V

    :goto_1
    return-void
.end method


# virtual methods
.method public getHintText()Ljava/lang/CharSequence;
    .locals 0

    .line 1183
    iget-object p0, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-object p0
.end method

.method protected getItemViewBounds(Landroid/widget/ListAdapter;Landroid/view/ViewGroup;Landroid/content/Context;)[[I
    .locals 8

    .line 1255
    const-class p2, I

    const/high16 p3, -0x80000000

    const/4 v0, 0x2

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_0

    .line 1256
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v3

    .line 1257
    invoke-interface {p1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v4

    new-array v5, v0, [I

    aput v0, v5, v1

    aput v4, v5, v2

    .line 1258
    invoke-static {p2, v5}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [[I

    move v0, v2

    :goto_0
    if-ge v0, v4, :cond_1

    const/4 v5, 0x0

    .line 1260
    invoke-interface {p1, v0, v5, v3}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    .line 1261
    iget-object v6, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v6, v6, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    invoke-static {v6, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 1262
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 1261
    invoke-virtual {v5, v6, v7}, Landroid/view/View;->measure(II)V

    .line 1263
    aget-object v6, p2, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredWidth()I

    move-result v7

    aput v7, v6, v2

    .line 1264
    aget-object v6, p2, v0

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    aput v5, v6, v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1267
    :cond_0
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    iget-object v3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v3, v3, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mMaxWidth:I

    invoke-static {v3, p3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p3

    .line 1268
    invoke-static {v2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v3

    .line 1267
    invoke-virtual {p1, p3, v3}, Landroid/view/View;->measure(II)V

    new-array p1, v0, [I

    .line 1269
    fill-array-data p1, :array_0

    invoke-static {p2, p1}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    move-object p2, p1

    check-cast p2, [[I

    .line 1270
    aget-object p1, p2, v2

    iget-object p3, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p3}, Landroid/view/View;->getMeasuredWidth()I

    move-result p3

    aput p3, p1, v2

    .line 1271
    aget-object p1, p2, v2

    iget-object p0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mContentView:Landroid/view/View;

    invoke-virtual {p0}, Landroid/view/View;->getMeasuredHeight()I

    move-result p0

    aput p0, p1, v1

    :cond_1
    return-object p2

    nop

    :array_0
    .array-data 4
        0x1
        0x2
    .end array-data
.end method

.method public prepareShow(Landroid/view/View;)Z
    .locals 0

    .line 1278
    invoke-super {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->prepareShow(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 1279
    invoke-virtual {p0, p1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 0

    .line 1177
    invoke-super {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1178
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mAdapter:Landroid/widget/ListAdapter;

    return-void
.end method

.method public setDropDownGravity(I)V
    .locals 0

    .line 1357
    invoke-super {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setDropDownGravity(I)V

    return-void
.end method

.method public setFenceView(Landroid/view/View;)V
    .locals 0

    .line 1327
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mFenceView:Landroid/view/View;

    .line 1328
    invoke-super {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setDecorView(Landroid/view/View;)V

    return-void
.end method

.method public setHorizontalOriginalOffset(I)V
    .locals 0

    .line 1347
    iput p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mOriginalHorizontalOffset:I

    return-void
.end method

.method public setPromptText(Ljava/lang/CharSequence;)V
    .locals 0

    .line 1189
    iput-object p1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->mHintText:Ljava/lang/CharSequence;

    return-void
.end method

.method public show(II)V
    .locals 2

    .line 1288
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    .line 1290
    invoke-direct {p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->setProperFenceView()V

    const/4 v1, 0x2

    .line 1291
    invoke-virtual {p0, v1}, Landroid/widget/PopupWindow;->setInputMethodMode(I)V

    .line 1292
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-virtual {p0, v1}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->prepareShow(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1293
    iget-object v1, p0, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->this$0:Lmiuix/appcompat/widget/Spinner;

    invoke-direct {p0, v1}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->showWithAnchor(Landroid/view/View;)V

    .line 1294
    invoke-direct {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->initListView(II)V

    :cond_0
    if-eqz v0, :cond_1

    return-void

    .line 1302
    :cond_1
    new-instance p1, Lmiuix/appcompat/widget/Spinner$DropdownPopup$2;

    invoke-direct {p1, p0}, Lmiuix/appcompat/widget/Spinner$DropdownPopup$2;-><init>(Lmiuix/appcompat/widget/Spinner$DropdownPopup;)V

    invoke-virtual {p0, p1}, Lmiuix/popupwidget/widget/PopupWindow;->setOnDismissListener(Landroid/widget/PopupWindow$OnDismissListener;)V

    return-void
.end method

.method public show(IIFF)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1313
    invoke-virtual {p0, p1, p2}, Lmiuix/appcompat/widget/Spinner$DropdownPopup;->show(II)V

    return-void
.end method

.method protected updateLocation(Landroid/view/View;)V
    .locals 3

    .line 1243
    invoke-virtual {p0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1244
    invoke-virtual {p0}, Lmiuix/popupwidget/widget/PopupWindow;->computePopupContentSize()V

    .line 1245
    iget-object p1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-interface {p1, v0}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getXInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result p1

    .line 1246
    iget-object v0, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowStrategy:Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;

    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    invoke-interface {v0, v1}, Lmiuix/popupwidget/internal/strategy/IPopupWindowStrategy;->getYInWindow(Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;)I

    move-result v0

    .line 1248
    iget-object v1, p0, Lmiuix/popupwidget/widget/PopupWindow;->mPopupWindowSpec:Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;

    iget v2, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupWidth:I

    iget v1, v1, Lmiuix/popupwidget/internal/strategy/PopupWindowSpec;->mFinalPopupHeight:I

    invoke-virtual {p0, p1, v0, v2, v1}, Landroid/widget/PopupWindow;->update(IIII)V

    :cond_0
    return-void
.end method
