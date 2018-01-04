//
//  ChartViewController.swift
//  weightApp
//
//  Created by Estefania Guardado on 03.01.18.
//  Copyright © 2018 Estefania Guardado. All rights reserved.
//

import Foundation
import PNChart

class ChartViewController: UIViewController {
    
    @IBOutlet weak var GraphView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let lineChart = self.setLineChart()
        lineChart.center = CGPoint(x: GraphView.bounds.midX,
                                        y: GraphView.bounds.midY);
        GraphView.addSubview(lineChart)

    }
    
    private func setLineChart() -> PNLineChart {
        let lineChart = PNLineChart(frame: CGRect(x: 0, y: 135, width: GraphView.bounds.width, height: GraphView.bounds.height))
        lineChart.yLabelFormat = "%1.1f"
        lineChart.showLabel = true
        lineChart.backgroundColor = UIColor.clear
        lineChart.xLabels = ["Sep 1", "Sep 2", "Sep 3", "Sep 4", "Sep 5", "Sep 6", "Sep 7"]
        lineChart.isShowCoordinateAxis = true
        lineChart.center = self.view.center
        
        let dataArr = [60.1, 160.1, 126.4, 232.2, 186.2, 127.2, 176.2]
        let data = PNLineChartData()
        data.color = .green
        data.itemCount = UInt(dataArr.count)
        data.inflexionPointStyle = .none
        data.getData = ({
            (index) -> PNLineChartDataItem in
            let idx = Int(index)
            let yValue = CGFloat(dataArr[idx])
            return PNLineChartDataItem(y: yValue)
        })
        
        let dataArr2 = [54.2, 140.1, 106.4, 132.2, 286.2, 227.2, 76.2]
        let data2 = PNLineChartData()
        data2.color = .red
        data2.itemCount = UInt(dataArr.count)
        data2.inflexionPointStyle = .none
        data2.getData = ({
            (index) -> PNLineChartDataItem in
            let idx = Int(index)
            let yValue = CGFloat(dataArr2[idx])
            return PNLineChartDataItem(y: yValue)
        })
        
        lineChart.chartData = [data, data2]
        lineChart.stroke()
        return lineChart
    }
    
}
